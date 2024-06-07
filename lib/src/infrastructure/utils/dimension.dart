import 'package:flutter/material.dart';

const int kDefaultScalingFactor = 8;

class Dimension {
  static const double xxs = kDefaultScalingFactor * 0.5;
  static const double xs = kDefaultScalingFactor * 1;
  static const double sm = kDefaultScalingFactor * 2;
  static const double md = kDefaultScalingFactor * 3;
  static const double lg = kDefaultScalingFactor * 4;
  static const double xl = kDefaultScalingFactor * 5;
  static const double xxl = kDefaultScalingFactor * 6;
  static const double xxxl = kDefaultScalingFactor * 7;

  static double scale(double value, {int factor = kDefaultScalingFactor}) {
    return value * factor.toDouble();
  }
}

extension DimensionExtensions on double {
  double get scaled => Dimension.scale(this / kDefaultScalingFactor);

  SizedBox get vertical => SizedBox(height: scaled);
  SizedBox get horizontal => SizedBox(width: scaled);

  EdgeInsets get paddingAll => EdgeInsets.all(scaled);
  EdgeInsets get paddingVertical => EdgeInsets.symmetric(vertical: scaled);
  EdgeInsets get paddingHorizontal => EdgeInsets.symmetric(horizontal: scaled);

  EdgeInsets get paddingTop => EdgeInsets.only(top: scaled);
  EdgeInsets get paddingBottom => EdgeInsets.only(bottom: scaled);
  EdgeInsets get paddingLeft => EdgeInsets.only(left: scaled);
  EdgeInsets get paddingRight => EdgeInsets.only(right: scaled);
}
