import './size_config.dart';

/// Extension to use values using [num]

extension Responsive on num {
  double get height => SizeConfig.heightMultiplier * this;

  double get width => SizeConfig.widthMultiplier * this;

  double get fontSize => SizeConfig.textMultiplier * this;
}