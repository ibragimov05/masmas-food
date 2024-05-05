import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masmas_food/screens/1.7%20Payment%20Method/1.7_PaymentMethod.dart';
import 'package:masmas_food/widgets/elevated_button_maker.dart';
import 'package:masmas_food/widgets/page_makers.dart';

class SignupProgress extends StatelessWidget {
  const SignupProgress({super.key});

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
        padding:
            const EdgeInsets.only(left: 25, right: 25, top: 38, bottom: 60),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const PageMaker(
                    text: 'Fill in your bio to get started',
                    mainText:
                        'This data will be displayed in your account profile for security',
                  ),
                  Placeholder(
                    fallbackWidth: 347.w,
                    fallbackHeight: 223.h,
                  ),
                  SizedBox(
                    height: 220.h,
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
