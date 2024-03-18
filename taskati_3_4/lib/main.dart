import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:taskati_3_4/core/services/local_storage.dart';
import 'package:taskati_3_4/core/themes/theme.dart';
import 'package:taskati_3_4/features/add-task/data/task_model.dart';
import 'package:taskati_3_4/features/splash_view.dart';

// handling themes (light / dark)
// adjust box with key of theme
// listen to value of this key
// deal with all of widgets by (theme)

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('user');
  Hive.registerAdapter(TaskModelAdapter());
  await Hive.openBox<TaskModel>('task');
  AppLocalStorage().init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Hive.box('user').listenable(),
      builder: (context, box, child) {
        bool darkMode = box.get('darkMode', defaultValue: false);
        return MaterialApp(
          themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
          // LIGHT
          theme: AppThemes.appLightTheme,
          // DARK
          darkTheme: AppThemes.appDarkTheme,
          debugShowCheckedModeBanner: false,
          home: const SplashView(),
        );
      },
    );
  }
}
