import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notely/components/height.dart';
import 'package:notely/constants/color_constants.dart';
import 'package:notely/features/auth/login_page.dart';
import 'package:notely/features/auth/widgets/custom_text_feild.dart';
import 'package:notely/features/auth/widgets/line_to_sign.dart';
import 'package:notely/widgets/custom_button.dart';
import 'package:notely/widgets/title_of_text_feild.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'NOTELY',
          style: TextStyle(
            fontSize: 20.sp,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.sp),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const H(h: 50),
              Text(
                'Create a free account',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kTitleTextColor,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const H(h: 5),
              Text(
                'Join Notely for free. Create and share unlimited notes with your friends.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const H(h: 50),
              const TitleOfTextFeild(title: 'Full Name'),
              const H(h: 8),
              const SignUpCustomTextFeild(
                hintText: 'Name',
              ),
              const H(h: 20),
              const TitleOfTextFeild(title: 'Email Address'),
              const H(h: 8),
              const SignUpCustomTextFeild(
                hintText: 'abc@abc.com',
              ),
              const H(h: 20),
              const TitleOfTextFeild(title: 'Password'),
              const H(h: 8),
              const SignUpCustomTextFeild(
                hintText: '########',
              ),
              const H(h: 60),
              CustomButton(
                text: 'Create Account',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
              ),
              const H(h: 20),
              LineToSign(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
                text: 'Already have an account?',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
