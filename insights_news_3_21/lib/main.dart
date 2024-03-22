import 'package:flutter/material.dart';
import 'package:insights_news_3_21/core/services/local_storage.dart';
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
    return const MaterialApp(
      home: SplashView(),
    );
  }
}
