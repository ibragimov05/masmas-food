import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckRow extends StatelessWidget {
  final String text;

  CheckRow({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 22.w,
          height: 22.h,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color(0xFF53E88B),
                Color(0xFF15BE77),
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.25),
                spreadRadius: 2.r,
              )
            ],
          ),
          child: SvgPicture.asset('assets/icons/page_1.5/check.svg'),
        ),
        SizedBox(
          width: 8.w,
        ),
        Text(
          text,
          style: TextStyle(
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.w400,
            fontSize: 12.sp,
            color: Colors.grey.withOpacity(1),
          ),
        ),
      ],
    );
  }
}
