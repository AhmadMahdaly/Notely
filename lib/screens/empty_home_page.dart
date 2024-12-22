import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notely/components/height.dart';
import 'package:notely/components/weight.dart';
import 'package:notely/constants/color_constants.dart';
import 'package:notely/features/auth/widgets/line_to_sign.dart';
import 'package:notely/screens/create_note.dart';
import 'package:notely/widgets/custom_button.dart';

class EmptyHomePage extends StatelessWidget {
  const EmptyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.sp),
          child: SvgPicture.asset(
            'assets/svg/Align left 1.svg',
            width: 20.sp,
            height: 20.sp,
          ),
        ),
        actions: [
          SvgPicture.asset('assets/svg/search.svg'),
          const W(w: 16),
        ],
        centerTitle: true,
        title: Text(
          'All Notes',
          style: TextStyle(
            color: kTitleTextColor,
            fontSize: 14.sp,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.sp),
        child: Center(
          child: Column(
            children: [
              const H(h: 100),
              Image.asset(
                'assets/images/empty_page.png',
                width: 268.sp,
              ),
              const H(h: 39),
              Text(
                'Create Your First Note',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kTitleTextColor,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const H(h: 12),
              Text(
                'Add a note about anything (your thoughts on climate change, or your history essay) and share it witht the world.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const H(h: 75),
              CustomButton(
                text: 'Create A Note',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CreateNote(),
                    ),
                  );
                },
              ),
              const H(h: 20),
              const LineToSign(
                text: 'Import Notes',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
