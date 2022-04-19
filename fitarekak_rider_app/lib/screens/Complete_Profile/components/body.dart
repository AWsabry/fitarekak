import 'package:fitarekak_rider_app/components/default_button.dart';
import 'package:fitarekak_rider_app/components/dropDown.dart';
import 'package:fitarekak_rider_app/components/input_field.dart';
import 'package:fitarekak_rider_app/components/background.dart';
import 'package:fitarekak_rider_app/screens/UploadDocuments/UploadDocument.dart';
import 'package:fitarekak_rider_app/theme.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // final snackBar = SnackBar(
  //   content: Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //     children: [
  //       const Text('Letting you in !'),
  //       SizedBox(
  //           height: 15,
  //           width: 15,
  //           child: CircularProgressIndicator(
  //             color: theme().accentColor,
  //           )),
  //     ],
  //   ),
  // );

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 15),
              Text(
                "Complete Profile",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: theme().primaryColor),
              ),
              SizedBox(height: size.height * 0.03),
              const SizedBox(
                height: 25,
              ),
              RoundedInputField(
                icon: Icons.person,
                hintText: "FirstName",
                onChanged: (value) {},
              ),
              RoundedInputField(
                icon: Icons.person,
                hintText: "LastName",
                onChanged: (value) {},
              ),
              DropDownList(
                icon: Icons.person,
                hintText: 'Gender',
                onChanged: (value) {},
              ),
              RoundedInputField(
                icon: Icons.person,
                hintText: "Country",
                onChanged: (value) {},
              ),
              RoundedInputField(
                icon: Icons.person,
                hintText: "City",
                onChanged: (value) {},
              ),
              RoundedInputField(
                icon: Icons.person,
                hintText: "Address",
                onChanged: (value) {},
              ),
              SizedBox(height: size.height * 0.03),
              DefaultButton(
                text: "Continue",
                press: () {
                  if (_formKey.currentState!.validate()) {
                    // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return UploadDocuments();
                        },
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
