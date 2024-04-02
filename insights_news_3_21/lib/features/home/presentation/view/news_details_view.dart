import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:insights_news_3_21/core/utils/colors.dart';
import 'package:insights_news_3_21/core/utils/text_styles.dart';
import 'package:insights_news_3_21/core/widgets/custom_btn.dart';
import 'package:insights_news_3_21/features/home/model/news_model/article.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsDetailsView extends StatelessWidget {
  const NewsDetailsView({super.key, required this.article});

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15),
        child: CustomButton(
          color: AppColors.primary,
          text: 'Go To Website',
          onPressed: () async {
            var url = Uri.parse(article.url ?? '');
            await launchUrl(url);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(article.urlToImage ?? ''),
            ),
            const Gap(10),
            Text(
              article.title ?? '',
              style: getTitleStyle(),
            ),
            const Gap(5),
            Row(
              children: [
                Text(
                  article.author ?? '',
                  style: getSmallStyle(),
                ),
                const Spacer(),
                Text(
                  article.publishedAt!.toIso8601String().split('T')[0],
                  style: getSmallStyle(color: AppColors.primary),
                ),
              ],
            ),
            const Gap(10),
            Text(
              article.description ?? '',
              style: getBodyStyle(color: AppColors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
