import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notely/constants/color_constants.dart';
import 'package:notely/features/auth/login_page.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
    );
  }
}
