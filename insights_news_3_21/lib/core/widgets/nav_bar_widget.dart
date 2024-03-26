import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insights_news_3_21/core/utils/colors.dart';
import 'package:insights_news_3_21/features/home/home_view.dart';
import 'package:insights_news_3_21/features/profile/views/profile_view.dart';
import 'package:insights_news_3_21/features/search/search_view.dart';
import 'package:insights_news_3_21/features/source/source_view.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({super.key});

  @override
  State<NavBarWidget> createState() => NavBarWidgetState();
}

class NavBarWidgetState extends State<NavBarWidget> {
  int selectedPage = 0;

  List<Widget> views = [
    const HomeView(),
    const SearchView(),
    const SourceView(),
    const ProfileView()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: views[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedPage,
          onTap: (value) {
            setState(() {
              selectedPage = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(
                  'assets/home.svg',
                  colorFilter:
                      ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
                ),
                icon: SvgPicture.asset('assets/home.svg'),
                label: 'Home'),
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(
                  'assets/search.svg',
                  colorFilter:
                      ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
                ),
                icon: SvgPicture.asset('assets/search.svg'),
                label: 'Search'),
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(
                  'assets/source.svg',
                  colorFilter:
                      ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
                ),
                icon: SvgPicture.asset('assets/source.svg'),
                label: 'Search'),
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(
                  'assets/profile.svg',
                  colorFilter:
                      ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
                ),
                icon: SvgPicture.asset('assets/profile.svg'),
                label: 'Search'),
          ]),
    );
  }
}
