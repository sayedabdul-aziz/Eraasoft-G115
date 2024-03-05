import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';
import 'package:taskati_3_4/core/constants/assets_images.dart';
import 'package:taskati_3_4/core/functions/routing.dart';
import 'package:taskati_3_4/core/utils/text_styles.dart';
import 'package:taskati_3_4/features/upload/upload_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      navigateWithReplacment(context, const UploadView());
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              AssetImages.appIcon,
            ),
            const Gap(20),
            Text(
              'Taskati',
              style: getTitleStyle(fontWeight: FontWeight.w500, fontSize: 22),
            ),
            const Gap(10),
            Text('It\'s Time To Get Organized', style: getSmallStyle()),
          ],
        ),
      ),
    );
  }
}
