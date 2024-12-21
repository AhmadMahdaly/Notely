import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      body: const SingleChildScrollView(
        child: Column(),
      ),
    );
  }
}
