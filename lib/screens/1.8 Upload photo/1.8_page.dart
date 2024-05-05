import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masmas_food/screens/1.9%20Upload%20Preview/1.9_page.dart';
import 'package:masmas_food/widgets/elevated_button_maker.dart';
import 'package:masmas_food/widgets/page_makers.dart';

class UploadPhoto extends StatelessWidget {
  const UploadPhoto({super.key});

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
                  const PageMaker(text: 'Upload Your Photo Profile'),
                  Placeholder(
                    fallbackWidth: 325.w,
                    fallbackHeight: 129.h,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Placeholder(
                    fallbackWidth: 325.w,
                    fallbackHeight: 129.h,
                  ),
                  SizedBox(
                    height: 165.h,
                  ),
                  ElevatedButtonMaker(
                    pageName: const UploadPreview(),
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
