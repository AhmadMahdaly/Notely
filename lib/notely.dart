import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notely/constants/color_constants.dart';
import 'package:notely/widgets/one_time_onboard_screen.dart';

class Notely extends StatefulWidget {
  const Notely({super.key});

  @override
  State<Notely> createState() => _NotelyState();
}

class _NotelyState extends State<Notely> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  Future<void> initialization() async {
    await Future.delayed(
      const Duration(
        seconds: 3,
      ),
    );
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        375,
        812,
      ),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            color: kBackgroundColor,
            centerTitle: true,
            titleTextStyle: TextStyle(
              color: kTitleTextColor,
              fontFamily: 'Titan One',
              fontWeight: FontWeight.w400,
            ),
          ),
          scaffoldBackgroundColor: kBackgroundColor,
          textTheme: Theme.of(
            context,
          ).textTheme.apply(
                fontFamily: 'Nunito',
              ),
        ),
        home: const OneTimeOnboard(),
      ),
    );
  }
}
