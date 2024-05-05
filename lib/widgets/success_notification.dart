import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masmas_food/widgets/elevated_button_maker.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SuccesNotificationPageMaker extends StatelessWidget {
  final String notificationInfoText;
  final Widget pageName;
  final String elevatedButtonText;

  const SuccesNotificationPageMaker({
    super.key,
    required this.notificationInfoText,
    required this.pageName,
    required this.elevatedButtonText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      /// background of page
      decoration: const BoxDecoration(
        color: Color(0xFFF4F4F4),
        image: DecorationImage(
          image: AssetImage('assets/images/page_1.11/background.png'),
          alignment: Alignment.topCenter,
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 31,
          right: 31,
          top: 3,
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 227.h,
                  ),
                  SvgPicture.asset('assets/images/page_1.11/tick.svg'),
                  SizedBox(
                    height: 33.h,
                  ),
                  GradientText(
                    'Congrats!',
                    style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.w700,
                        fontSize: 30.sp),
                    colors: const [
                      Color(0xFF53E88B),
                      Color(0xFF15BE77),
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Text(
                    notificationInfoText,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 23.sp,
                      color: const Color(0xFF09051C),
                    ),
                  ),
                  SizedBox(
                    height: 192.h,
                  ),
                  ElevatedButtonMaker(
                    pageName: pageName,
                    textInButton: elevatedButtonText,
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
