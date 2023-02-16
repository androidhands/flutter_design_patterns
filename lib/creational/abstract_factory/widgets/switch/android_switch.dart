import 'package:design_patterns_flutter/creational/abstract_factory/i_switch.dart';
import 'package:flutter/material.dart';

class AndroidSwitch implements ISwitch {
  @override
  Widget render(bool value, ValueSetter<bool> onChanged) {
    return Switch(
        activeColor: Colors.black, value: value, onChanged: onChanged);
  }
}
