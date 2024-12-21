import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notely/constants/color_constants.dart';

class TitleOfTextFeild extends StatelessWidget {
  const TitleOfTextFeild({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            color: kTitleTextColor,
            fontSize: 12.sp,
            fontWeight: FontWeight.w700,
            height: 1.30,
            letterSpacing: 0.48,
          ),
        ),
      ],
    );
  }
}
