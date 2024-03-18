import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:taskati_3_4/core/utils/colors.dart';
import 'package:taskati_3_4/core/utils/text_styles.dart';
import 'package:taskati_3_4/features/add-task/data/task_model.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({
    super.key,
    required this.model,
  });

  final TaskModel model;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          // margin: const EdgeInsets.only(top: 7),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: model.color == 0
                  ? AppColors.primary
                  : model.color == 1
                      ? AppColors.orange
                      : model.color == 2
                          ? AppColors.red
                          : Colors.green,
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.title,
                      style: getTitleStyle(context,
                          color: AppColors.white, fontSize: 16),
                    ),
                    const Gap(5),
                    Row(
                      children: [
                        Icon(
                          Icons.watch_later_outlined,
                          color: AppColors.white,
                          size: 18,
                        ),
                        const Gap(7),
                        Text(
                          '${model.startTime} : ${model.endTime}',
                          style: getSmallStyle(
                            color: AppColors.white,
                          ),
                        )
                      ],
                    ),
                    const Gap(5),
                    Text(
                      model.note,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: getBodyStyle(context,
                          color: AppColors.white, fontSize: 16),
                    )
                  ],
                ),
              ),
              // const Spacer(),
              const SizedBox(
                height: 60,
                child: RotatedBox(quarterTurns: 3, child: Divider()),
              ),
              const Gap(5),
              RotatedBox(
                quarterTurns: 3,
                child: Text(
                  model.isComplete ? 'COMPLETED' : 'TODO',
                  style: getBodyStyle(context,
                      color: AppColors.white, fontSize: 16),
                ),
              )
            ],
          ),
        ),
        // Container(
        //   color: AppColors.darkBackground,
        //   width: 300,
        //   height: 5,
        // )
      ],
    );
  }
}
