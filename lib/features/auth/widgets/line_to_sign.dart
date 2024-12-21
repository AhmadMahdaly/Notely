import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notely/constants/color_constants.dart';

class LineToSign extends StatelessWidget {
  const LineToSign({required this.text, super.key, this.onTap});
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Text(
        text,
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
