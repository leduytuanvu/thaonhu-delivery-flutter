import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:thaonhu_delivery_flutter/core/configs/app_constant.dart';
import 'package:thaonhu_delivery_flutter/core/configs/app_lottie.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              AppLottie.location,
              height: 250.w,
              width: 250.w,
            ),
            titleText(title: "Turn on your location"),
          ],
        ),
      ),
    );
  }
}
