import 'package:design_patterns_flutter/creational/abstract_factory/i_activity_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class AndroidActivityIndicator implements IActivityIndicator {
  @override
  Widget render() {
    return CircularProgressIndicator(
      backgroundColor: Colors.blueGrey,
      valueColor: AlwaysStoppedAnimation<Color>(Colors.black.withOpacity(0.65)),
    );
  }
}
