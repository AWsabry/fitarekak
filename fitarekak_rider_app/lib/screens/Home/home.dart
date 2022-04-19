import 'package:fitarekak_rider_app/components/default_button.dart';
import 'package:fitarekak_rider_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:fitarekak_rider_app/screens/MapScreen/routeScreen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              child: Image.asset('assets/images/0033.png'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DefaultButton(
                  text: 'Login as a Driver',
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) =>
                              const RouteScreen(type: 'Driver')),
                    );
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DefaultButton(
                  text: 'Login as a Rider',
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) =>
                              const RouteScreen(type: 'Rider')),
                    );
                  }),
            ],
          )
        ],
      ),
    );
  }
}
