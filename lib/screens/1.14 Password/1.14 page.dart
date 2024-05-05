import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masmas_food/screens/1.15%20Success%20Notification/1.15_page.dart';
import 'package:masmas_food/widgets/elevated_button_maker.dart';
import 'package:masmas_food/widgets/page_makers.dart';

class Password extends StatelessWidget {
  const Password({super.key});

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
                    text: 'Reset your password here',
                    mainText:
                    'Select which contact details should we use to reset your password',
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Placeholder(
                    fallbackWidth: 347.w,
                    fallbackHeight: 61.h,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Placeholder(
                    fallbackWidth: 347.w,
                    fallbackHeight: 61.h,
                  ),
                  SizedBox(
                    height: 290.h,
                  ),
                  ElevatedButtonMaker(
                    pageName: SuccessNotification(),
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
