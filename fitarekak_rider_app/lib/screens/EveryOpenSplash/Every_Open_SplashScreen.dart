import 'dart:async';
import 'package:fitarekak_rider_app/screens/Home/home.dart';
import 'package:fitarekak_rider_app/theme.dart';
import 'package:flutter/material.dart';

class EveryOpenSplash extends StatefulWidget {
  const EveryOpenSplash({Key? key}) : super(key: key);

  @override
  State<EveryOpenSplash> createState() => _EveryOpenSplashState();
}

class _EveryOpenSplashState extends State<EveryOpenSplash>
    with SingleTickerProviderStateMixin {
  var _visible = true;

  late AnimationController animationController;
  late Animation<double> animation;

  startTime() async {
    var _duration = const Duration(seconds: 3);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Home()),
    );
  }

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme().primaryColor,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                'Fi Tarekak',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    color: Colors.white),
              )
            ],
          ),
        ],
      ),
    );
  }
}
