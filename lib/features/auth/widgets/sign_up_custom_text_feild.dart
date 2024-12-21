import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notely/constants/color_constants.dart';

class SignUpCustomTextFeild extends StatelessWidget {
  const SignUpCustomTextFeild({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        color: kTextColor,
        fontSize: 16.sp,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.64,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: 18.sp,
          horizontal: 8.sp,
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: kTextColor.withOpacity(0.8),
          fontSize: 14.sp,
        ),
        fillColor: kLightTextColor,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.sp),
          borderSide: BorderSide(
            width: 1.sp,
            color: kBorder,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.sp),
          borderSide: BorderSide(
            width: 1.sp,
            color: kBorder,
          ),
        ),
      ),
    );
  }
}
