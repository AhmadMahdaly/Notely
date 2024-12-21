import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notely/components/height.dart';
import 'package:notely/constants/color_constants.dart';
import 'package:notely/screens/auth/login_page.dart';
import 'package:notely/screens/auth/sign_up_page.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'NOTELY',
          style: TextStyle(
            fontSize: 20.sp,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const H(h: 110),

            /// Image
            Image.asset(
              'assets/images/onboard.png',
              width: 268.sp,
            ),
            const H(h: 28),

            /// Title Text
            Text(
              'World’s Safest And\nLargest Digital Notebook',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kTitleTextColor,
                fontSize: 24.sp,
                fontWeight: FontWeight.w900,
              ),
            ),

            /// Desc Text
            Text(
              'Notely is the world’s safest, largest and intelligent digital notebook. Join over 10M+ users already using Notely.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kTextColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                height: 1.30,
              ),
            ),
            const H(h: 88),

            /// Sign Up button
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpPage(),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                width: 319.sp,
                height: 74.sp,
                decoration: ShapeDecoration(
                  color: kButtonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.sp),
                  ),
                ),
                child: Text(
                  'GET STARTED',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kLightTextColor,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w900,
                    height: 1.30.sp,
                    letterSpacing: 2.40.sp,
                  ),
                ),
              ),
            ),
            const H(h: 20),

            /// Login button
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              child: Text(
                'Already have an account?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kButtonColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w800,
                  height: 1.30.sp,
                  letterSpacing: 0.64.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
