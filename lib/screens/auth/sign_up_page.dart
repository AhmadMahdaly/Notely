import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
      body: const Center(
        child: Column(),
      ),
    );
  }
}
