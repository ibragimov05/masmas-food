import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masmas_food/screens/1.10%20Set%20location/1.10_page.dart';
import 'package:masmas_food/widgets/elevated_button_maker.dart';
import 'package:masmas_food/widgets/page_makers.dart';

class UploadPreview extends StatelessWidget {
  const UploadPreview({super.key});

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
                  const PageMaker(text: 'Upload Your Photo Profile'),
                  SizedBox(
                    height: 44.h,
                  ),

                  /// photo of user
                  Container(
                    width: 245.w,
                    height: 238.h,
                    padding: const EdgeInsets.all(11),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/page_1.9/upload_preview.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 31.w,
                          height: 31.w,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.9),
                              shape: BoxShape.circle),
                          child: const Icon(
                            Icons.close,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 160.h,
                  ),

                  /// next button maker
                  ElevatedButtonMaker(
                    pageName: const SetLocation(),
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
