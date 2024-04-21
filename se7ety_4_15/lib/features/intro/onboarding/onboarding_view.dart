import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:se7ety_4_15/core/functions/routing.dart';
import 'package:se7ety_4_15/core/utils/colors.dart';
import 'package:se7ety_4_15/core/utils/styles.dart';
import 'package:se7ety_4_15/core/widgets/custom_button.dart';
import 'package:se7ety_4_15/features/intro/onboarding/onboarding_model.dart';
import 'package:se7ety_4_15/features/intro/welcome_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  var pageController = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        actions: [
          if (currentPage != 2)
            TextButton(
              onPressed: () {
                pushToWithReplacement(context, const WelcomeView());
              },
              child: Text(
                'تخطي',
                style: getbodyStyle(color: AppColors.color1),
              ),
            ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          // pageview
          Expanded(
              child: PageView.builder(
            controller: pageController,
            onPageChanged: (value) {
              setState(() {
                currentPage = value;
              });
            },
            itemBuilder: (context, index) {
              return Column(children: [
                // image
                const Spacer(),
                SvgPicture.asset(
                  pages[index].image,
                  width: 300,
                ),
                const Spacer(),
                // title
                Text(
                  pages[index].title,
                  style: getTitleStyle(color: AppColors.color1),
                ),
                const Spacer(),
                Text(
                  pages[index].body,
                  textAlign: TextAlign.center,
                  style: getbodyStyle(),
                ),
                const Spacer(
                  flex: 3,
                ),
              ]);
            },
            itemCount: pages.length,
          )),
          // footer
          SizedBox(
            height: 70,
            child: Row(
              children: [
                SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                  effect: SlideEffect(
                      spacing: 8.0,
                      radius: 15,
                      dotWidth: 24.0,
                      dotHeight: 13,
                      strokeWidth: 1.5,
                      dotColor: Colors.grey,
                      activeDotColor: AppColors.color1),
                ),
                const Spacer(),
                if (currentPage == 2)
                  CustomButton(
                      height: 45,
                      text: 'هيا بنا',
                      onPressed: () {
                        pushToWithReplacement(context, const WelcomeView());
                      },
                      width: 100)
              ],
            ),
          )
        ]),
      ),
    );
  }
}
