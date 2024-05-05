import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masmas_food/screens/1.2%20Onboarding/1.2_page.dart';
import 'package:masmas_food/screens/1.3%20Onboarding/1.3_page.dart';
import 'package:masmas_food/screens/1.4%20Sign%20up/1.4_page.dart';

class PageMaker extends StatelessWidget {
  final String backgroundPath;
  final String textColumn_1;
  final String textColumn_2;
  final String textColumn_3;
  final String textColumn_4;
  final double sizedBoxHeight1;
  final double sizedBoxHeight2;
  final bool isTrue;

  PageMaker({
    super.key,
    required this.sizedBoxHeight1,
    required this.backgroundPath,
    required this.textColumn_1,
    required this.textColumn_2,
    required this.textColumn_3,
    required this.textColumn_4,
    required this.sizedBoxHeight2,
    required this.isTrue,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: sizedBoxHeight1.h,
            ),
            SvgPicture.asset(
              backgroundPath,
            ),
            SizedBox(
              height: sizedBoxHeight2.h,
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(
                          textColumn_1,
                          style: GoogleFonts.libreFranklin(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          textColumn_2,
                          style: GoogleFonts.libreFranklin(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Center(
                      child: Column(
                        children: [
                          Text(textColumn_3),
                          Text(textColumn_4),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 42.h,
            ),
            ElevatedButton(
              // style: ButtonStyle(g),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.r),
                ),
                elevation: 0,
                minimumSize: Size(157.w, 57.h),
                padding: EdgeInsets.zero,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) {
                    return isTrue ? SignUp() : OnboardingPage13();
                  }),
                );
              },
              child: Container(
                width: 157.w,
                height: 57.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF53E88B),
                      Color(0xFF15BE77),
                    ],
                  ),
                ),
                child: Center(
                  child: Text(
                    'Next',
                    style: GoogleFonts.libreFranklin(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
