import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taskati_3_4/core/functions/custom_dialogs.dart';
import 'package:taskati_3_4/core/functions/routing.dart';
import 'package:taskati_3_4/core/services/local_storage.dart';
import 'package:taskati_3_4/core/widgets/custom_btn.dart';
import 'package:taskati_3_4/features/home/presentation/view/home_view.dart';

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
                // check image and name
                // is done
                // no image
                // no name
                // no name and no image
                if (path != null && name.isNotEmpty) {
                  // cache data and navigate
                  AppLocalStorage.cacheDate('name', name);
                  AppLocalStorage.cacheDate('image', path);
                  AppLocalStorage.cacheDate('isUpload', true);
                  navigateWithReplacment(context, const HomeView());
                } else if (path == null && name.isNotEmpty) {
                  showErrorDialog(context, 'Please Enter Your Image');
                } else if (path != null && name.isEmpty) {
                  showErrorDialog(context, 'Please Enter Your Name');
                } else {
                  showErrorDialog(
                      context, 'Please Enter Your Image and Your Image');
                }
              },
              child: const Text('Done')),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: (path != null)
                    ? FileImage(File(path!)) as ImageProvider
                    : const AssetImage('assets/user.png'),
              ),
              const Gap(20),
              CustomButton(
                  text: 'Upload from Camera',
                  onPressed: () {
                    uploadFromCamera();
                  },
                  width: 250),
              const Gap(10),
              CustomButton(
                  text: 'Upload from Gallery',
                  onPressed: () {
                    uploadFromGallery();
                  },
                  width: 250),
              const Gap(10),
              const Divider(
                indent: 20,
                endIndent: 20,
              ),
              const Gap(10),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
                decoration: const InputDecoration(
                  hintText: 'Enter Your Name',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  uploadFromCamera() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedImage != null) {
      setState(() {
        path = pickedImage.path;
      });
    }
  }

  uploadFromGallery() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        path = pickedImage.path;
      });
    }
  }
}
