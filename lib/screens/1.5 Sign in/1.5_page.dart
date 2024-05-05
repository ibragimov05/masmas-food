import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masmas_food/screens/1.5%20Sign%20in/widgets/check_row.dart';
import 'package:masmas_food/screens/1.6%20Signup%20progress/1.6_SignupProgress.dart';
import 'package:masmas_food/widgets/elevated_button_maker.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      /// background of page
      decoration: const BoxDecoration(
        color: Color(0xFFF4F4F4),
        image: DecorationImage(
          image: AssetImage('assets/images/page_1.4/background.png'),
          alignment: Alignment.topCenter,
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 47.h,
                  ),
                  Container(
                    width: 175.w,
                    height: 139.h,
                    child: Image.asset(
                      'assets/images/page_1.4/background.png',
                    ),
                  ),
                  GradientText(
                    'MasmasFood',
                    style: GoogleFonts.viga(
                      fontSize: 40.0.sp,
                    ),
                    colors: const [
                      Color(0xFF53E88B),
                      Color(0xFF15BE77),
                    ],
                  ),
                  Text(
                    'Deliver Favorite Food',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 13.sp,
                      color: const Color(0xFF09051C),
                    ),
                  ),
                  SizedBox(
                    height: 48.h,
                  ),
                  Text(
                    'Sign Up For Free',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w900,
                      fontSize: 20.sp,
                      color: const Color(0xFF09051C),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),

                  /// place holder for name, email, password
                  Placeholder(
                    fallbackWidth: 325.w,
                    fallbackHeight: 195.h,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),

                  CheckRow(
                    text: 'Keep Me Signed In',
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  CheckRow(
                    text: 'Email Me About Special Pricing',
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  ElevatedButtonMaker(
                    pageName: const SignupProgress(),
                    textInButton: 'Create Account',
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      enableFeedback: false,
                      foregroundColor: Colors.transparent,
                    ),
                    onPressed: () {},
                    child: GradientText(
                      'already have an account?',
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp
                      ),
                      colors: const [
                        Color(0xFF53E88B),
                        Color(0xFF15BE77),
                      ],
                    ),
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
