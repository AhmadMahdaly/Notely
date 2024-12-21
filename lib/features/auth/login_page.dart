import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notely/components/height.dart';
import 'package:notely/constants/color_constants.dart';
import 'package:notely/features/auth/widgets/line_to_sign.dart';
import 'package:notely/features/auth/widgets/sign_up_custom_text_feild.dart';
import 'package:notely/screens/home_page.dart';
import 'package:notely/widgets/custom_button.dart';
import 'package:notely/widgets/title_of_text_feild.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                'Log in to your Thought',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kTitleTextColor,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const H(h: 5),
              Text(
                'Welcome back to your Notely. Create and share unlimited notes with your friends.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const H(h: 50),
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
              const H(h: 150),
              const CustomButton(text: 'Login', page: HomePage()),
              const H(h: 20),
              LineToSign(
                onTap: () {
                  Navigator.pop(context);
                },
                text: 'Create a free account',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
