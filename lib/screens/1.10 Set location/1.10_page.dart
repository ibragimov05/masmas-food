import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masmas_food/screens/1.11%20Signup%20Success%20Notification/1.11_page.dart';
import 'package:masmas_food/screens/1.9%20Upload%20Preview/1.9_page.dart';
import 'package:masmas_food/widgets/elevated_button_maker.dart';
import 'package:masmas_food/widgets/page_makers.dart';

class SetLocation extends StatelessWidget {
  const SetLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      /// background of page
      decoration: const BoxDecoration(
        color: Color(0xFFF4F4F4),
        image: DecorationImage(
          image: AssetImage('assets/images/page_1.6/background.png'),
          alignment: Alignment.topRight,
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 25,
          right: 25,
          top: 38,
          bottom: 60,
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const PageMaker(text: 'Set Your Location'),

                  /// location setter
                  Container(
                    padding: const EdgeInsets.only(
                      top: 20,
                      bottom: 10,
                      left: 10,
                      right: 10,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(22.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.125),
                          blurRadius: 50,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/page_1.10/location.svg',
                            ),
                            SizedBox(
                              width: 14.w,
                            ),
                            Text(
                              'Your Location',
                              style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15.sp),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 27.h,
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            left: 116,
                            right: 115,
                            top: 21,
                            bottom: 22,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF6F6F6),
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Text(
                            'Set Location',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              color: const Color(0xFF09051C),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 328.h,
                  ),

                  /// next button maker
                  ElevatedButtonMaker(
                    pageName: const SignUpSuccessNotification(),
                    textInButton: 'Next',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
