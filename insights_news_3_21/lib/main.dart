import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:insights_news_3_21/core/services/local_storage.dart';
import 'package:insights_news_3_21/core/utils/colors.dart';
import 'package:insights_news_3_21/features/home/presentation/manager/news_cubit.dart';
import 'package:insights_news_3_21/features/splash_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppLocalStorage().init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: AppColors.background,
            appBarTheme: AppBarTheme(
              backgroundColor: AppColors.background,
            ),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              backgroundColor: AppColors.background,
              selectedItemColor: AppColors.primary,
              unselectedItemColor: AppColors.grey,
            )),
        home: const SplashView(),
      ),
    );
  }
}
