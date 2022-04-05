import 'package:fitarekak_rider_app/screens/Register/Register_screen.dart';
import 'package:fitarekak_rider_app/screens/SplashScreenRegister/Register_SplashScreen.dart';
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
      home: const RegisterScreen(),
    );
  }
}
