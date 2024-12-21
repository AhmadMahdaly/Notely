import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notely/constants/color_constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({required this.text, this.onTap, super.key});
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {},
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
          text,
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
    );
  }
}
