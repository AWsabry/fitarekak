import 'package:fitarekak_rider_app/theme.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Hello User',
        style: TextStyle(color: Colors.black),
      )),
      body: Center(
        child: Text(
          'Fi Tarekak',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: theme().primaryColor,
              fontSize: 36),
        ),
      ),
    );
  }
}
