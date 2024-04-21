import 'package:flutter/material.dart';
import 'package:se7ety_4_15/core/functions/routing.dart';
import 'package:se7ety_4_15/features/intro/onboarding/onboarding_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      pushToWithReplacement(
          context,
          // FirebaseAuth.instance.currentUser != null
          //     ? const DoctorUploadData()
          //     :
          const OnboardingView());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/logo.png',
          width: 250,
        ),
      ),
    );
  }
}
