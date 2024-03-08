import 'dart:io';

import 'package:flutter/material.dart';
import 'package:taskati_3_4/core/services/local_storage.dart';
import 'package:taskati_3_4/core/utils/colors.dart';
import 'package:taskati_3_4/core/utils/text_styles.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({
    super.key,
  });

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  String? path;
  String name = '';

  @override
  void initState() {
    super.initState();
    name = AppLocalStorage.getCachedData('name');
    path = AppLocalStorage.getCachedData('image');
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, ${name.isEmpty ? '' : name}',
              style: getTitleStyle(color: AppColors.primary),
            ),
            Text(
              'Have A Nice Day.',
              style: getBodyStyle(),
            ),
          ],
        ),
        const Spacer(),
        InkWell(
          onTap: () {
            // showTimePicker(
            //   context: context,
            //   initialTime: TimeOfDay.now(),
            // );
            // showDatePicker(
            //     context: context,
            //     initialDate: DateTime.now(),
            //     firstDate: DateTime.now(),
            //     lastDate: DateTime(2050));
          },
          child: CircleAvatar(
            radius: 22,
            backgroundImage: path != null
                ? FileImage(File(path!)) as ImageProvider
                : const AssetImage('assets/user.png'),
          ),
        ),
      ],
    );
  }
}
