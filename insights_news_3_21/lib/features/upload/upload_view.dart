import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:insights_news_3_21/core/functions/custom_dialogs.dart';
import 'package:insights_news_3_21/core/functions/routing.dart';
import 'package:insights_news_3_21/core/services/local_storage.dart';
import 'package:insights_news_3_21/core/utils/colors.dart';
import 'package:insights_news_3_21/core/utils/text_styles.dart';
import 'package:insights_news_3_21/core/widgets/custom_btn.dart';
import 'package:insights_news_3_21/core/widgets/nav_bar_widget.dart';

String? path;
String name = '';

class UploadView extends StatefulWidget {
  const UploadView({super.key});

  @override
  State<UploadView> createState() => _UploadViewState();
}

class _UploadViewState extends State<UploadView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              if (path != null && name.isNotEmpty) {
                // cache your date and navigate
                AppLocalStorage.cacheData('name', name);
                AppLocalStorage.cacheData('image', path);
                AppLocalStorage.cacheData('isUpload', true);
                navigateWithReplacment(context, const NavBarWidget());
              } else if (path != null && name.isEmpty) {
                showErrorDialog(context, 'Please Enter Your Name');
              } else if (path == null && name.isNotEmpty) {
                showErrorDialog(context, 'Please Upload Your Image');
              } else {
                showErrorDialog(
                    context, 'Please Upload Your Image and Enter Your Name');
              }
            },
            child: Text(
              'Done',
              style: getBodyStyle(color: AppColors.primary),
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // IMAGE
              CircleAvatar(
                radius: 70,
                backgroundColor: AppColors.grey,
                backgroundImage: (path != null)
                    ? FileImage(File(path!)) as ImageProvider
                    : const AssetImage('assets/user.png'),
              ),
              const Gap(30),
              CustomButton(
                text: 'Upload From Camera',
                onPressed: () {
                  ImagePicker()
                      .pickImage(source: ImageSource.camera)
                      .then((value) {
                    if (value != null) {
                      setState(() {
                        path = value.path;
                      });
                    }
                  });
                },
              ),
              const Gap(10),
              CustomButton(
                text: 'Upload From Gallery',
                onPressed: () {
                  // pick image
                  ImagePicker()
                      .pickImage(source: ImageSource.gallery)
                      .then((value) {
                    // check is picked or no
                    if (value != null) {
                      setState(() {
                        // pass its path to path
                        path = value.path;
                      });
                    }
                  });
                },
              ),
              Divider(
                height: 40,
                color: AppColors.primary,
              ),

              TextFormField(
                style: getBodyStyle(),
                cursorColor: AppColors.primary,
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
                decoration: InputDecoration(
                    hintText: 'Enter Your Name',
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
