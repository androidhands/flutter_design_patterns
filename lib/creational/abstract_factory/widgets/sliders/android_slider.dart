import 'package:design_patterns_flutter/creational/abstract_factory/i_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/basic_types.dart';

class AndroidSlider implements ISlider {
  @override
  Widget render(double value, ValueSetter<double> onChanged) {
    return Slider(
        activeColor: Colors.black,
        inactiveColor: Colors.grey,
        min: 0.0,
        max: 100.0,
        value: value,
        onChanged: onChanged);
  }
}
