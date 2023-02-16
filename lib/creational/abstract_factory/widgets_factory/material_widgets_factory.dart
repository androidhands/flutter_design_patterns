import 'package:design_patterns_flutter/creational/abstract_factory/i_switch.dart';
import 'package:design_patterns_flutter/creational/abstract_factory/i_slider.dart';
import 'package:design_patterns_flutter/creational/abstract_factory/i_activity_indicator.dart';
import 'package:design_patterns_flutter/creational/abstract_factory/i_widgets_factory.dart';
import 'package:design_patterns_flutter/creational/abstract_factory/widgets/indicators/android_activity_indicator.dart';
import 'package:design_patterns_flutter/creational/abstract_factory/widgets/switch/android_switch.dart';

import '../widgets/sliders/android_slider.dart';

class MaterialWidgetsFactory implements IWidgetsFactory {
  @override
  IActivityIndicator createActivityIndicator() {
    return AndroidActivityIndicator();
  }

  @override
  ISlider createSlider() {
    return AndroidSlider();
  }

  @override
  ISwitch createSwitch() {
    return AndroidSwitch();
  }

  @override
  String getTitle() {
    return 'Android Widgets';
  }
}
