import 'package:fitarekak_rider_app/screens/Complete_Profile/Complete_Profile_Screen.dart';
import 'package:fitarekak_rider_app/screens/Home/home.dart';
import 'package:fitarekak_rider_app/screens/Mobile_Confirmation/enteringPhoneScreen.dart';
import 'package:fitarekak_rider_app/screens/Mobile_Confirmation/otpScreen.dart';
import 'package:fitarekak_rider_app/screens/Register/Register_screen.dart';
import 'package:fitarekak_rider_app/screens/Splash_Screens/SplashScreenRegister/components/splashContentModel.dart';
import 'package:fitarekak_rider_app/screens/Splash_Screens/SplashScreenRegister/register_SplashScreen.dart';
import 'package:fitarekak_rider_app/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      home: const SplashScreenRegister(),
    );
  }
}
