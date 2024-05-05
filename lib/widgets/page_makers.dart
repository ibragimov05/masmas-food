import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masmas_food/widgets/arrowBackIco_maker.dart';

class PageMaker extends StatelessWidget {
  final String text;

  const PageMaker({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ArrowBackIcon(),
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            SizedBox(
              width: 264.w,
              child: Text(
                text,
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.w700,
                  fontSize: 25.sp,
                  color: const Color(0xFF09051C),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 19.h,
        ),
        Row(
          children: [
            SizedBox(
              width: 247.w,
              height: 44.h,
              child: Text(
                'This data will be displayed in your account profile for security',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                  color: const Color(0xFF000000),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}
