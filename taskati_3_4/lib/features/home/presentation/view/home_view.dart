import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';
import 'package:taskati_3_4/core/utils/colors.dart';
import 'package:taskati_3_4/features/add-task/data/task_model.dart';
import 'package:taskati_3_4/features/home/presentation/widgets/home_header.dart';
import 'package:taskati_3_4/features/home/presentation/widgets/task_item.dart';
import 'package:taskati_3_4/features/home/presentation/widgets/today_header.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String _selectedValue = DateFormat("dd/MM/yyyy").format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              // Header
              const HomeHeader(),
              const Gap(20),
              const TodayHeader(),
              const Gap(20),
              // date timeline
              DatePicker(
                // DateTime.now().add(const Duration(days: -2)),
                DateTime.now(),
                height: 100,
                width: 80,
                initialSelectedDate: DateTime.now(),
                selectionColor: AppColors.primary,
                selectedTextColor: Colors.white,
                onDateChange: (date) {
                  // New date selected
                  setState(() {
                    _selectedValue = DateFormat("dd/MM/yyyy").format(date);
                  });
                },
              ),

              // list of tasks
              const Gap(10),
              Expanded(
                child: ValueListenableBuilder<Box<TaskModel>>(
                  valueListenable: Hive.box<TaskModel>('task').listenable(),
                  builder: (context, Box<TaskModel> value, child) {
                    List<TaskModel> tasks = [];
                    for (var element in value.values) {
                      if (element.date == _selectedValue) {
                        tasks.add(element);
                      }
                    }
                    return ListView.builder(
                      itemCount: tasks.length,
                      itemBuilder: (BuildContext context, int index) {
                        return TaskItem(
                          model: tasks[index],
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
