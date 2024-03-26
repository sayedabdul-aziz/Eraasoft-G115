import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:insights_news_3_21/core/utils/colors.dart';
import 'package:insights_news_3_21/core/utils/text_styles.dart';
import 'package:insights_news_3_21/features/home/widgets/home_header.dart';
import 'package:insights_news_3_21/features/home/widgets/news_list_builder.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentSlider = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                const HomeHeader(),
                const Gap(15),
                CarouselSlider.builder(
                    itemBuilder: (context, index, realIndex) {
                      return Image.asset('assets/rodri.png');
                    },
                    itemCount: 4,
                    options: CarouselOptions(
                      height: 180,
                      viewportFraction: .8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentSlider = index;
                        });
                      },
                      scrollDirection: Axis.horizontal,
                    )),
                SmoothPageIndicator(
                  controller: PageController(
                    initialPage: currentSlider,
                  ),
                  count: 4,
                  effect: ScrollingDotsEffect(
                      dotHeight: 10,
                      dotWidth: 10,
                      dotColor: Colors.grey,
                      activeDotColor: AppColors.primary),
                ),
                const Gap(15),
                ButtonsTabBar(
                    // Customize the appearance and behavior of the tab bar
                    backgroundColor: AppColors.primary,
                    unselectedBackgroundColor: AppColors.containerBg,
                    labelStyle: getBodyStyle(color: AppColors.black),
                    unselectedLabelStyle: getBodyStyle(color: AppColors.white),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    buttonMargin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    // Add your tabs here
                    tabs: const [
                      Tab(
                        text: 'Science',
                      ),
                      Tab(
                        text: 'Entertainment',
                      ),
                      Tab(
                        text: 'Sports',
                      ),
                      Tab(
                        text: 'Business',
                      ),
                    ]),
                const Gap(10),
                // TAB BAR VIEW
                const Expanded(
                    child: TabBarView(children: [
                  NewsListBuilder(),
                  NewsListBuilder(),
                  NewsListBuilder(),
                  NewsListBuilder(),
                ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
