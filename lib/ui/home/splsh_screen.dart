// import 'dart:nativewrappers/_internal/vm/lib/async_patch.dart';

import 'package:flutter/material.dart';
import 'package:islam/ui/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routName = 'Splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // void initState() {
  //   super.initState();
  //   Timer(Duration(seconds: 3), (){
  //    Navigator.pushReplacementNamed(context, HomeScreen.routeName);
  //  });
  // }
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/splash_screen_light.png',
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fill,
    );
  }
}
