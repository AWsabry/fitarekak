import 'package:flutter/material.dart';
import 'package:fitarekak_rider_app/components/text_field_container.dart';
import 'package:fitarekak_rider_app/constants.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;

  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  late bool _passwordVisible;

  final TextEditingController confirmPassword = TextEditingController();
  final TextEditingController password = TextEditingController();

  void initState() {
    _passwordVisible = true;
  }

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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldContainer(
          child: TextFormField(
            controller: password,
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: kPassNullError);
                return "Please Enter your password";
              } else if (value.length < 8) {
                addError(error: kShortPassError);
                return "Password is too short";
              }
              return null;
            },
            keyboardType: TextInputType.text,
            obscureText: _passwordVisible,
            onChanged: widget.onChanged,
            cursorColor: kPrimaryColor,
            decoration: InputDecoration(
              hintText: "Password",
              icon: const Icon(
                Icons.lock,
                color: kPrimaryColor,
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  // Based on passwordVisible state choose the icon
                  _passwordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Theme.of(context).primaryColorDark,
                ),
                onPressed: () {
                  // Update the state i.e. toogle the state of passwordVisible variable
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
              ),
            ),
          ),
        ),
        TextFieldContainer(
          child: TextFormField(
            controller: confirmPassword,
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: kPassNullError);
                return "Please Enter your password";
              } else if ((password.text != value)) {
                addError(error: kMatchPassError);
                return "Passwords don't match";
              }
              return null;
            },
            keyboardType: TextInputType.text,
            obscureText: _passwordVisible,
            onChanged: widget.onChanged,
            cursorColor: kPrimaryColor,
            decoration: InputDecoration(
              hintText: "Password",
              icon: const Icon(
                Icons.lock,
                color: kPrimaryColor,
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  // Based on passwordVisible state choose the icon
                  _passwordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Theme.of(context).primaryColorDark,
                ),
                onPressed: () {
                  // Update the state i.e. toogle the state of passwordVisible variable
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
