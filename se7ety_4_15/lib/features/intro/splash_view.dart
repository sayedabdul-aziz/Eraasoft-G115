import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:se7ety_4_15/core/functions/routing.dart';
import 'package:se7ety_4_15/features/doctor/nav_bar.dart';
import 'package:se7ety_4_15/features/intro/onboarding/onboarding_view.dart';
import 'package:se7ety_4_15/features/patient/nav_bar.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      // todo: 1)
      // Todo: check this user is a doctor or patient
      // todo: using firebase firestore
      // todo: using cacheing
      pushToWithReplacement(
          context,
          FirebaseAuth.instance.currentUser != null
              ? FirebaseAuth.instance.currentUser?.photoURL == '0'
                  ? const DoctorNavBar() //Update with doctor nav
                  : const PatientNavBar()
              // Todo: using caching
              // TODO: if onboarding is not done, ==> onboarding view
              // TODO: else ==> welcome View
              : const OnboardingView());
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
