import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:insights_news_3_21/core/functions/routing.dart';
import 'package:insights_news_3_21/core/utils/colors.dart';
import 'package:insights_news_3_21/core/utils/text_styles.dart';
import 'package:insights_news_3_21/features/home/presentation/manager/news_cubit.dart';
import 'package:insights_news_3_21/features/home/presentation/manager/news_state.dart';
import 'package:insights_news_3_21/features/home/presentation/view/news_details_view.dart';

class NewsListBuilder extends StatefulWidget {
  const NewsListBuilder({
    super.key,
    required this.category,
  });

  final String category;

  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {
  @override
  void initState() {
    context.read<NewsCubit>().getNewsByCategory(widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsStates>(
      builder: (context, state) {
        if (state is NewsByCategorySuccessState) {
          var news = state.model.articles;
          return ListView.builder(
            itemCount: news?.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  navigateTo(
                      context,
                      NewsDetailsView(
                        article: news![index],
                      ));
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                      color: AppColors.containerBg,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          news?[index].urlToImage ?? '',
                          width: 150,
                          height: 90,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return SizedBox(
                                width: 150,
                                height: 90,
                                child: Icon(
                                  Icons.error,
                                  color: AppColors.grey,
                                ));
                          },
                        ),
                      ),
                      const Gap(10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              news?[index].title ?? '',
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: getSmallStyle(
                                  fontSize: 12, color: AppColors.white),
                            ),
                            const Gap(3),
                            Text(
                              news?[index].author ?? '',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: getSmallStyle(
                                  fontSize: 12, color: AppColors.grey),
                            ),
                            const Gap(10),
                            Row(
                              children: [
                                Icon(
                                  Icons.menu,
                                  color: AppColors.white,
                                  size: 14,
                                ),
                                const Gap(5),
                                Text(
                                  'Read',
                                  style: getSmallStyle(
                                      fontSize: 12, color: AppColors.white),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        } else if (state is NewsByCategoryErrorState) {
          return const Text('Error');
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
