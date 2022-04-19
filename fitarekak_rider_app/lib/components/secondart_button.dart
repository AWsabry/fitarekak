import 'package:fitarekak_rider_app/theme.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color textColor;
  const SecondaryButton({
    Key? key,
    required this.text,
    required this.press,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: 120,
      height: 50,
      child: ClipRRect(
        child: newElevatedButton(),
      ),
    );
  }

  Widget newElevatedButton() {
    return ElevatedButton(
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
      onPressed: press,
      style: ElevatedButton.styleFrom(
          primary: theme().accentColor,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          textStyle: TextStyle(
              color: textColor, fontSize: 12, fontWeight: FontWeight.w500)),
    );
  }
}
