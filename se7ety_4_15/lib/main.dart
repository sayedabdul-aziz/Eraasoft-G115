import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyD8Sv66kROjbtNen_oh7YI5RVJ3eOWST_4',
          appId: 'com.example.se7ety_4_15',
          messagingSenderId: '890052287618',
          projectId: 'se7ety-115'));
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
