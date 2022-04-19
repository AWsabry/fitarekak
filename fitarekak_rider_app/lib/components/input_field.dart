import 'package:flutter/material.dart';
import 'package:fitarekak_rider_app/components/text_field_container.dart';
import 'package:fitarekak_rider_app/constants.dart';

class RoundedInputField extends StatefulWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<RoundedInputField> createState() => _RoundedInputFieldState();
}

final List<String> errors = [];

class _RoundedInputFieldState extends State<RoundedInputField> {
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
    return TextFieldContainer(
      child: TextFormField(
        onChanged: widget.onChanged,
        keyboardType: TextInputType.text,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: widget.hintText,
          border: InputBorder.none,
        ),
        validator: (value) {
          if (value!.isEmpty) {
            addError(error: kPassNullError);
            return "Please Fill the Form";
          }
          return null;
        },
      ),
    );
  }
}
