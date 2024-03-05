import 'package:flutter/material.dart';

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
        title: const Text('Upload Data'),
        leading: IconButton(
            onPressed: () {
              // showDatePicker(
              //     context: context,
              //     initialDate: DateTime.now(),
              //     firstDate: DateTime.now(),
              //     lastDate: DateTime(2050));
            },
            icon: const Icon(Icons.calendar_month)),
      ),
    );
  }
}
