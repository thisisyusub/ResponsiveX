import 'package:flutter/material.dart';

/// Class to initialize calculation for responsiveness
/// must be called when the app is started
class SizeConfig {
  SizeConfig({
    @required this.designScreenWidth,
    @required this.designScreenHeight,
  });

  /// the value of [screen width] of design given by [designer]
  int designScreenWidth;

  /// the value of [screen height] of design given by [designer]
  int designScreenHeight;

  /// [width] of current device
  static double _screenWidth;

  /// [height] of current device
  static double _screenHeight;

  /// value to initialize [fontSize]
  static double textMultiplier;

  /// value to initialize [image sizes]
  static double imageSizeMultiplier;

  /// value to initialize [height] values
  static double heightMultiplier;

  /// value to initialize [width] values
  static double widthMultiplier;

  /// value to get information about [orientation]
  static bool isPortrait = true;

  /// value to get information about [portrait] in in [mobile] or [not]
  static bool isMobilePortrait = false;

  /// the method to initialize [SizeConfig] for responsive calculation
  void init(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      _screenWidth = constraints.maxWidth;
      _screenHeight = constraints.maxHeight;
      isPortrait = true;
      if (_screenWidth < 450) {
        isMobilePortrait = true;
      }
    } else {
      _screenWidth = constraints.maxHeight;
      _screenHeight = constraints.maxWidth;
      isPortrait = false;
      isMobilePortrait = false;
    }

    imageSizeMultiplier = heightMultiplier = _screenHeight / designScreenHeight;
    widthMultiplier = textMultiplier = _screenWidth / designScreenWidth;
  }
}
