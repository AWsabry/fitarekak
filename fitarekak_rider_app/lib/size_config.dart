import 'package:flutter/material.dart';

class SizeConfig {
  static double screenWidth = 1.0;
  static double screenHeight = 1.0;
  static double _blockSizeHorizontal = 0;
  static double _blockSizeVertical = 0;
  late MediaQueryData _mediaQueryData;
  late Orientation orientation;

  static double textMultiplier = 1.0;
  static double imageSizeMultiplier = 1.0;
  static double heightMultiplier = 1.0;
  static double widthMultiplier = 1.0;
  static bool isPortrait = true;
  static bool isMobilePortrait = false;

  void init(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      screenWidth = constraints.maxWidth;
      screenHeight = constraints.maxHeight;
      isPortrait = true;
      if (screenWidth < 450) {
        isMobilePortrait = true;
      }
    } else {
      screenWidth = constraints.maxHeight;
      screenHeight = constraints.maxWidth;
      isPortrait = false;
      isMobilePortrait = false;
    }

    _blockSizeHorizontal = screenWidth / 100;
    _blockSizeVertical = screenHeight / 100;

    textMultiplier = _blockSizeVertical;
    imageSizeMultiplier = _blockSizeHorizontal;
    heightMultiplier = _blockSizeVertical;
    widthMultiplier = _blockSizeHorizontal;
  }

  void initialize(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

getProportionateScreenHeight(double inputHeight) {
  double? screenHeight = SizeConfig.screenWidth;
  // 812.0 designer ishlatgan height
  return (inputHeight / 812.0) * screenHeight;
}

getProportionateScreenWidth(double inputWidth) {
  double? screenWidth = SizeConfig.screenWidth;
  // 375.0 designer ishlatgan width
  return (inputWidth / 375.0) * screenWidth;
}
