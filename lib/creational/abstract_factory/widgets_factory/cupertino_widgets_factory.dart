import 'package:design_patterns_flutter/creational/abstract_factory/i_switch.dart';
import 'package:design_patterns_flutter/creational/abstract_factory/i_slider.dart';
import 'package:design_patterns_flutter/creational/abstract_factory/i_activity_indicator.dart';
import 'package:design_patterns_flutter/creational/abstract_factory/i_widgets_factory.dart';
import 'package:design_patterns_flutter/creational/abstract_factory/widgets/indicators/ios_activity_indicator.dart';

import '../widgets/sliders/ios_slider.dart';
import '../widgets/switch/ios_switch.dart';

class CupertinoWidgetsFactory implements IWidgetsFactory {
  @override
  IActivityIndicator createActivityIndicator() {
    return IosActivityIndicator();
  }

  @override
  ISlider createSlider() {
    return IosSlider();
  }

  @override
  ISwitch createSwitch() {
    return IosSwitch();
  }

  @override
  String getTitle() {
    return 'IOS Widgets';
  }
}
