import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/configs/app_color.dart';

class GradientButtonWidget extends StatelessWidget {
  final String title;
  final Function()? function;
  final double height;
  final double width;
  final double fontSize;
  final double radius;

  const GradientButtonWidget({
    super.key,
    required this.title,
    required this.function,
    this.height = 40,
    this.width = 100,
    this.radius = 100,
    this.fontSize = 14,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        elevation: 1,
        minimumSize: Size(100.0.w, 50.0.h),
        padding: const EdgeInsets.all(0.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              AppColor.primary,
              // AppColors.buttonRadient2,
              AppColor.primary,
            ],
          ),
          borderRadius: BorderRadius.all(Radius.circular(radius)),
        ),
        child: Container(
          constraints: BoxConstraints(minWidth: 100.w, minHeight: 50.0.h),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Text(
              title,
              style: TextStyle(
                fontFamily: GoogleFonts.poppins().fontFamily,
                fontWeight: FontWeight.bold,
                fontSize: fontSize.sp,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
