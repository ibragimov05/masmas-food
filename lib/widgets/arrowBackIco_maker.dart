import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArrowBackIcon extends StatelessWidget {
  const ArrowBackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 45.w,
          height: 45.h,
          decoration: BoxDecoration(
            color: const Color(0xFFF9A84D).withOpacity(0.3),
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xFFDA6317),
          ),
        ),
      ],
    );
  }
}
