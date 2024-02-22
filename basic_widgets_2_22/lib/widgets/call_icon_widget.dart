import 'package:flutter/material.dart';

class CallIconWidget extends StatelessWidget {
  const CallIconWidget({super.key, required this.text, required this.onTap});

  final String text;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blueAccent.withOpacity(.2)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [const Icon(Icons.call), Text(text)],
        ),
      ),
    );
  }
}
