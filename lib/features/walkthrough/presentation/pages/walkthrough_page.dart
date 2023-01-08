import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:thaonhu_delivery_flutter/core/configs/app_constant.dart';
import 'package:thaonhu_delivery_flutter/features/location/presentation/pages/location_page.dart';
import 'package:thaonhu_delivery_flutter/widgets/gradient_button_widget.dart';
import '../../../../core/configs/app_lottie.dart';

class WalkthroughPage extends StatefulWidget {
  const WalkthroughPage({super.key});

  @override
  State<WalkthroughPage> createState() => _WalkthroughPageState();
}

class _WalkthroughPageState extends State<WalkthroughPage> {
  int _index = 0;
  final _listLottie = [
    AppLottie.walkthrough1,
    AppLottie.walkthrough2,
    AppLottie.walkthrough3
  ];
  final _listTitle = [
    "Welcome to Sahlah",
    "Get delivery on time",
    "Choose your food"
  ];
  final _listDescription = [
    "Enjoy a fast and smooth food delivery of your doestep",
    "Order your favorite food within the polm of your hand and the zone of your comfort",
    "Order your favorite food within the polm of your hand and the zone of your comfort"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Lottie.asset(
                _listLottie[_index],
                height: 250.w,
                width: 250.w,
              ),
            ),
            sizedBoxVer(50.h),
            Text(
              _listTitle[_index],
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 18.sp,
              ),
            ),
            sizedBoxVer(12.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Text(
                _listDescription[_index],
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(fontSize: 13.sp),
              ),
            ),
            sizedBoxVer(80.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _index = 0;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    decoration: BoxDecoration(
                      color: _index == 0 ? Colors.green : Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    height: 8.h,
                    width: _index == 0 ? 40.w : 14.w,
                  ),
                ),
                sizedBoxHor(4.w),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _index = 1;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    decoration: BoxDecoration(
                      color: _index == 1 ? Colors.green : Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    height: 8.h,
                    width: _index == 1 ? 40.w : 14.w,
                  ),
                ),
                sizedBoxHor(4.w),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _index = 2;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    decoration: BoxDecoration(
                      color: _index == 2 ? Colors.green : Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    height: 8.h,
                    width: _index == 2 ? 40.w : 14.w,
                  ),
                ),
              ],
            ),
            sizedBoxVer(80.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: SizedBox(
                height: 40.sp,
                child: GradientButtonWidget(
                  title: "CONTINUE",
                  function: () {
                    if (_index < 2) {
                      setState(() {
                        _index++;
                      });
                    } else {
                      Navigator.pushAndRemoveUntil(
                        (context),
                        MaterialPageRoute(
                          builder: (context) => const LocationPage(),
                        ),
                        (route) => false,
                      );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
