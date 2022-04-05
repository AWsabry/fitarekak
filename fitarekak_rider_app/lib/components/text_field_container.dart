import 'package:fitarekak_rider_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:fitarekak_rider_app/constants.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(5)),
      width: size.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
