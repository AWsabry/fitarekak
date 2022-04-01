import 'package:fitarekak_rider_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpinKitHourGlass(
      color: theme().primaryColor,
      size: 45,
    );
  }
}
