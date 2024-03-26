import 'package:flutter/material.dart';
import 'package:insights_news_3_21/core/utils/text_styles.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Profile',
          style: getBodyStyle(),
        ),
      ),
    );
  }
}
