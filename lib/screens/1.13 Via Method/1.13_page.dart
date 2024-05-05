import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masmas_food/widgets/elevated_button_maker.dart';
import 'package:masmas_food/widgets/page_makers.dart';

class ViaMethod extends StatelessWidget {
  const ViaMethod({super.key});

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
                    text: 'Forgot password?',
                    mainText:
                        'Select which contact details should we use to reset your password',
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Placeholder(
                    fallbackWidth: 347.w,
                    fallbackHeight: 105.h,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Placeholder(
                    fallbackWidth: 347.w,
                    fallbackHeight: 81.h,
                  ),
                  SizedBox(
                    height: 269.h,
                  ),
                  ElevatedButtonMaker(
                    pageName: const Placeholder(),
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
