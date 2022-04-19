import 'package:fitarekak_rider_app/constants.dart';
import 'package:fitarekak_rider_app/size_config.dart';
import 'package:flutter/material.dart';

import 'otp_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(20)),
              Container(
                width: 200,
                height: 200,
                child: Image.asset(
                  'assets/images/0.png',
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(40)),
              Text(
                "OTP Verification",
                style: headingStyle,
              ),
              const Text("We sent your code to +02 101 58 ***"),
              buildTimer(),
              const OtpForm(),
              SizedBox(height: getProportionateScreenHeight(20)),
              GestureDetector(
                onTap: () {
                  // OTP code resend
                },
                child: const Text(
                  "Resend OTP Code",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("This code will expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: Duration(seconds: 30),
          builder: (_, value, child) => const Text(
            "00:05.00",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
