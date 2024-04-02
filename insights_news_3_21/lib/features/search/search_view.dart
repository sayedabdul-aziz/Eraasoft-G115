import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:insights_news_3_21/core/utils/colors.dart';
import 'package:insights_news_3_21/core/utils/text_styles.dart';
import 'package:insights_news_3_21/features/home/presentation/manager/news_cubit.dart';
import 'package:insights_news_3_21/features/search/widgets/news_search_builder.dart';

class SearchView extends StatelessWidget {
  SearchView({super.key});

  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Search for News'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 55,
                child: TextFormField(
                  controller: searchController,
                  style: getBodyStyle(),
                  decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 3),
                      child: FloatingActionButton.small(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: AppColors.containerBg,
                          foregroundColor: AppColors.primary,
                          onPressed: () {
                            context
                                .read<NewsCubit>()
                                .getNewsBySearch(searchController.text);
                          },
                          child: const Icon(
                            Icons.search_rounded,
                          )),
                    ),
                    hintText: 'Search for News',
                  ),
                ),
              ),
              const Gap(20),
              const Expanded(child: NewsSearchListBuilder())
            ],
          ),
        ));
  }
}
