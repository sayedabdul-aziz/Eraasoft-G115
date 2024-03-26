import 'package:flutter/material.dart';
import 'package:insights_news_3_21/core/utils/text_styles.dart';

class SourceView extends StatelessWidget {
  const SourceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Source',
          style: getBodyStyle(),
        ),
      ),
    );
  }
}
