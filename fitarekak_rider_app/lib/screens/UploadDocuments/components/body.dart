import 'package:fitarekak_rider_app/components/default_button.dart';
import 'package:fitarekak_rider_app/components/input_field.dart';
import 'package:fitarekak_rider_app/components/background.dart';
import 'package:fitarekak_rider_app/components/secondart_button.dart';
import 'package:fitarekak_rider_app/screens/Mobile_Confirmation/enteringPhoneScreen.dart';
import 'package:fitarekak_rider_app/screens/Mobile_Confirmation/otpScreen.dart';
import 'package:fitarekak_rider_app/theme.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

int _index = 0;

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Text(
              "Uploading Required Document #1",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: theme().primaryColor),
            ),
            SizedBox(
                height: 75,
                child: SecondaryButton(text: 'Upload', press: () {})),
            const SizedBox(height: 25),
            Text(
              "Uploading Required Document #2",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: theme().primaryColor),
            ),
            SizedBox(
                height: 75,
                child: SecondaryButton(text: 'Upload', press: () {})),
            const SizedBox(height: 25),
            Text(
              "Uploading Required Document #3",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: theme().primaryColor),
            ),
            Container(
                height: 75,
                child: SecondaryButton(text: 'Upload', press: () {})),
            const SizedBox(
              height: 100,
            ),
            Container(
              margin: const EdgeInsets.all(25),
              child: DefaultButton(
                text: "Skip",
                press: () {
                  if (_formKey.currentState!.validate()) {
                    // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const PhoneNumberEntery();
                        },
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),

        //  Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[
        // Text(
        //   "Uploading Required Documents",
        //   style: TextStyle(
        //       fontWeight: FontWeight.bold, color: theme().primaryColor),
        // ),
        // SizedBox(height: size.height * 0.03),
        // const SizedBox(
        //   height: 25,
        // ),
        // SizedBox(height: size.height * 0.03),
        //     SecondaryButton(
        //       text: "Continue",
        //       press: () {
        //         if (_formKey.currentState!.validate()) {
        //           // ScaffoldMessenger.of(context).showSnackBar(snackBar);
        //           // Navigator.push(
        //           //   context,
        //           //   MaterialPageRoute(
        //           //     builder: (context) {
        //           //       return UploadDocuments();
        //           //     },
        //           //   ),
        //           // );
        //         }
        //       },
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
