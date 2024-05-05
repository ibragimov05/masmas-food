import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ElevatedButtonMaker extends StatelessWidget {
  final Widget pageName;
  final String textInButton;

  ElevatedButtonMaker({
    super.key,
    required this.pageName,
    required this.textInButton,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.r),
        ),
        elevation: 0,
        minimumSize: Size(157.w, 57.h),
        padding: EdgeInsets.zero,
      ),
      onPressed: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => pageName,
          ),
        );
      },
      child: Container(
        width: 157.w,
        height: 57.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          gradient: const LinearGradient(
            colors: [
              Color(0xFF53E88B),
              Color(0xFF15BE77),
            ],
          ),
        ),
        child: Center(
          child: Text(
            textInButton,
            style: GoogleFonts.libreFranklin(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: const Color(0xFFFFFFFF),
            ),
          ),
        ),
      ),
    );
  }
}
