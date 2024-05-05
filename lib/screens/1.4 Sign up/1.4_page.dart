import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masmas_food/screens/1.4%20Sign%20up/widgets/container_maker.dart';
import 'package:masmas_food/screens/1.5%20Sign%20in/1.5_page.dart';
import 'package:masmas_food/widgets/elevated_button_maker.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          body: Center(
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
                  'Deliever Favorite Food',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 13.sp,
                    color: const Color(0xFF09051C),
                  ),
                ),
                SizedBox(
                  height: 60.h,
                ),
                Text(
                  'Login To Your Account',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                    color: const Color(0xFF09051C),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),

                /// place holder for email and password
                Placeholder(
                  fallbackHeight: 126.h,
                  fallbackWidth: 325.w,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Or Continue With',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.sp,
                    color: const Color(0xFF09051C),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ContainerMaker(
                      pathToIcon: 'assets/icons/page_1.4/facebook.svg',
                      text: 'Facebook',
                    ),
                    ContainerMaker(
                      pathToIcon: 'assets/icons/page_1.4/google.svg',
                      text: 'Google',
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),

                GradientText(
                  'Forgot Your Password?',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp,
                  ),
                  colors: const [
                    Color(0xFF53E88B),
                    Color(0xFF15BE77),
                  ],
                ),
                SizedBox(
                  height: 36.h,
                ),
                ElevatedButtonMaker(
                  pageName: const SignIn(),
                  textInButton: 'Login',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
