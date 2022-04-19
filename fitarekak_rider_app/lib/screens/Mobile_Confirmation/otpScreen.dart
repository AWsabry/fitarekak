import 'package:fitarekak_rider_app/constants.dart';
import 'package:fitarekak_rider_app/size_config.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class OTPScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().initialize(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Confirm Your Phone Number",
          style: TextStyle(color: kSecondaryColor),
        ),
      ),
      body: Body(),
    );
  }
}
