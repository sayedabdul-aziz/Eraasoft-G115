import 'package:flutter/material.dart';
import 'package:insights_news_3_21/core/utils/text_styles.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Search',
          style: getBodyStyle(),
        ),
      ),
    );
  }
}
