import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:notely/components/weight.dart';
import 'package:notely/constants/color_constants.dart';

class CreateNote extends StatelessWidget {
  const CreateNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.sp),
            child: SvgPicture.asset(
              'assets/svg/arrow-left-1.svg',
              width: 20.sp,
              height: 20.sp,
            ),
          ),
        ),
        actions: [
          SvgPicture.asset('assets/svg/more-ver.svg'),
          const W(w: 16),
        ],
        centerTitle: true,
        title: Text(
          'Edit Note',
          style: TextStyle(
            color: kTitleTextColor,
            fontSize: 14.sp,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.sp),
          child: Column(
            children: [
              TextFormField(
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.64,
                ),
                decoration: InputDecoration(
                  hintText: 'Title of note',
                  hintStyle: TextStyle(
                    color: kTextColor.withOpacity(0.8),
                    fontSize: 14.sp,
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      style: BorderStyle.none,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      style: BorderStyle.none,
                    ),
                  ),
                ),
              ),
              TextFormField(
                textAlignVertical: TextAlignVertical.top,
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.64,
                ),
                decoration: InputDecoration(
                  /// Height of TextFeild
                  contentPadding: EdgeInsets.only(
                    bottom: 200.sp,
                    right: 8.sp,
                    left: 8.sp,
                    top: 8.sp,
                  ),
                  hintText: 'Note...',
                  hintStyle: TextStyle(
                    color: kTextColor.withOpacity(0.8),
                    fontSize: 14.sp,
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.sp),
                    borderSide: const BorderSide(
                      color: kBorderColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.sp),
                    borderSide: BorderSide(
                      width: 1.sp,
                      color: kMainTextColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
