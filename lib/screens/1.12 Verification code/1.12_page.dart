import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masmas_food/screens/1.7%20Payment%20Method/1.7_PaymentMethod.dart';
import 'package:masmas_food/widgets/elevated_button_maker.dart';
import 'package:masmas_food/widgets/page_makers.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({super.key});

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
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const PageMaker(
                    text: 'Enter 4-digit Verification code',
                    mainText:
                        'Code send to +6282045**** . This code will expired in 01:30',
                  ),
                  SizedBox(
                    height: 38.h,
                  ),
                  Placeholder(
                    fallbackWidth: 347.w,
                    fallbackHeight: 103.h,
                  ),
                  SizedBox(
                    height: 322.h,
                  ),
                  ElevatedButtonMaker(
                    pageName: const PaymentMethod(),
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
