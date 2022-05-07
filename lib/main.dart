import 'package:flutter/material.dart';
import 'package:screen_specifications_teravel/gen/fonts.gen.dart';
import 'package:screen_specifications_teravel/my_colors.dart';

import 'package:screen_specifications_teravel/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          // headline1: TextStyle(
          //   fontFamily: FontFamily.voga,
          //   fontSize: 64,
          //   color: SolidColors.textwellcomsplashscreen,
          // ),
          headline1: TextStyle(
              fontFamily: FontFamily.poppins,
              fontSize: 35,
              color: SolidColors.textwellcomsplashscreen,
              fontWeight: FontWeight.bold),
          subtitle1: TextStyle(
              fontFamily: FontFamily.poppins,
              fontSize: 16,
              color: SolidColors.textwellcomsplashscreen,
              fontWeight: FontWeight.normal),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
