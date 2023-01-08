import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

sizedBoxVer(double height) {
  return SizedBox(
    height: height,
  );
}

sizedBoxHor(double width) {
  return SizedBox(
    width: width,
  );
}

titleText({String title = "", double fontSize = 14}) {
  return Text(
    title,
    style: GoogleFonts.poppins(
      fontSize: fontSize.sp,
    ),
  );
}
