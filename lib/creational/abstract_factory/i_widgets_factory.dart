import 'package:design_patterns_flutter/creational/abstract_factory/i_activity_indicator.dart';
import 'package:design_patterns_flutter/creational/abstract_factory/i_slider.dart';
import 'package:design_patterns_flutter/creational/abstract_factory/i_switch.dart';

abstract class IWidgetsFactory {
  String getTitle();
  IActivityIndicator createActivityIndicator();
  ISlider createSlider();
  ISwitch createSwitch();
}
