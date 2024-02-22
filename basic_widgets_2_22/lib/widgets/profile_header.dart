import 'package:basic_widgets_2_22/widgets/call_icon_widget.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 80,
          backgroundImage: AssetImage('assets/55.jpg'),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Dr. Ahmed Salem',
              style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              'Dentist',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Text('3')
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                CallIconWidget(text: '1', onTap: () {}),
                const SizedBox(
                  width: 7,
                ),
                CallIconWidget(text: '2', onTap: () {}),
              ],
            ),
          ],
        )
      ],
    );
  }
}
