import 'package:flutter/material.dart';
import './size_config.dart';

/// Extension to use values using [BuildContext]
extension ResponsiveExtension on BuildContext {
  double computeHeight(double height) => SizeConfig.heightMultiplier * height;

  double computeWidth(double width) => SizeConfig.widthMultiplier * width;

  double computeFontSize(double fontSize) => SizeConfig.textMultiplier * fontSize;
}