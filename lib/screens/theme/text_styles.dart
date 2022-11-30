import 'package:flutter/material.dart';

extension TextStyleHelpers on TextStyle {
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);
  TextStyle c(Color value) => copyWith(color: value);
  TextStyle letterSpace(double value) => copyWith(letterSpacing: value);
}
