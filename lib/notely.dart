import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Notely extends StatelessWidget {
  const Notely({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        375,
        812,
      ),
      minTextAdapt: true,
      child: MaterialApp(
        theme: ThemeData(
          textTheme: Theme.of(
            context,
          ).textTheme.apply(
                fontFamily: 'Nunito',
              ),
        ),
        home: Container(),
      ),
    );
  }
}
