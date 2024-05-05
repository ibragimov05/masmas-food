import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerMaker extends StatelessWidget {
  String pathToIcon;
  String text;

  ContainerMaker({
    super.key,
    required this.pathToIcon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: text == 'Google' ? 31 : 22,
        right: text == 'Google' ? 34 : 24,
        top: 16,
        bottom: 16,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(
          color: Colors.grey.withOpacity(0.3),
          width: 1.5.w,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF4041c7).withOpacity(0.1),
            blurRadius: 30.r,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(pathToIcon),
          SizedBox(
            width: 13.w,
          ),
          Text(
            text,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w600,
              fontSize: 14.sp,
              color: const Color(0xFF09051C),
            ),
          ),
        ],
      ),
    );
  }
}
