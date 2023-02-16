import 'package:design_patterns_flutter/creational/abstract_factory/i_slider.dart';
import 'package:flutter/cupertino.dart';

class IosSlider implements ISlider {
  @override
  Widget render(double value, ValueSetter<double> onChanged) {
    return CupertinoSlider(
      min: 0.0,max: 100.0,
      value: value, onChanged: onChanged);
  }
}
