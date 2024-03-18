import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:taskati_3_4/core/functions/routing.dart';
import 'package:taskati_3_4/core/utils/text_styles.dart';
import 'package:taskati_3_4/core/widgets/custom_mini_button.dart';
import 'package:taskati_3_4/features/add-task/presentaion/view/add_task_view.dart';

class TodayHeader extends StatelessWidget {
  const TodayHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              DateFormat.yMMMMd().format(DateTime.now()),
              style: getTitleStyle(
                context,
              ),
            ),
            Text(
              'Today',
              style: getTitleStyle(
                context,
              ),
            ),
          ],
        ),
        const Spacer(),
        CustomMiniButton(
          text: '+ Add Task',
          onPressed: () {
            navigateTo(context, const AddTaskView());
          },
        ),
      ],
    );
  }
}
