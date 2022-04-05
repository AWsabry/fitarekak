import 'package:fitarekak_rider_app/components/already_have_an_account_acheck.dart';
import 'package:fitarekak_rider_app/components/email_input_field.dart';
import 'package:fitarekak_rider_app/components/default_button.dart';
import 'package:fitarekak_rider_app/components/password_field.dart';
import 'package:fitarekak_rider_app/constants.dart';
import 'package:fitarekak_rider_app/loading.dart';
import 'package:fitarekak_rider_app/screens/Register/components/background.dart';
import 'package:fitarekak_rider_app/screens/Register/components/or_divider.dart';
import 'package:fitarekak_rider_app/size_config.dart';

import 'package:fitarekak_rider_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    final List<String> errors = [];

    void addError({required String error}) {
      if (!errors.contains(error)) {
        setState(() {
          errors.add(error);
        });
      }
    }

    void removeError({required String error}) {
      if (errors.contains(error)) {
        setState(() {
          errors.remove(error);
        });
      }
    }

    final snackBar = SnackBar(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Letting you in !'),
          SizedBox(
              height: 15,
              width: 15,
              child: CircularProgressIndicator(
                color: theme().accentColor,
              )),
        ],
      ),
    );

    final _formKey = GlobalKey<FormState>();
    final TextEditingController confirmPassword = TextEditingController();
    final TextEditingController password = TextEditingController();

    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Register",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: theme().primaryColor),
              ),
              SizedBox(height: size.height * 0.03),
              SizedBox(
                child: Image.asset(
                  'assets/images/7610.jpg',
                ),
              ),
              // SvgPicture.asset(
              //   "assets/icons/signup.svg",
              //   height: size.height * 0.35,
              // ),
              const SizedBox(
                height: 25,
              ),
              EmailInputField(
                hintText: "Your Email",
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                onChanged: (value) {
                  if (value.isNotEmpty) {
                    removeError(error: kPassNullError);
                  } else if (value.length >= 8) {
                    removeError(error: kShortPassError);
                  }
                  password.text = value;
                },
              ),

              DefaultButton(
                text: "Register",
                press: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
              ),
              SizedBox(height: size.height * 0.03),
              OrDivider(),
              AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return LoginScreen();
                  //     },
                  //   ),
                  // );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
