import 'package:design_patterns_flutter/creational/abstract_factory/i_activity_indicator.dart';
import 'package:design_patterns_flutter/creational/abstract_factory/i_slider.dart';
import 'package:design_patterns_flutter/creational/abstract_factory/i_switch.dart';
import 'package:design_patterns_flutter/creational/abstract_factory/i_widgets_factory.dart';
import 'package:design_patterns_flutter/creational/abstract_factory/widgets_factory/cupertino_widgets_factory.dart';
import 'package:design_patterns_flutter/creational/abstract_factory/widgets_factory/material_widgets_factory.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<IWidgetsFactory> widgetsFactoryList = [
    MaterialWidgetsFactory(),
    CupertinoWidgetsFactory()
  ];
  int _selectedFactoryIndex = 1;

  late IActivityIndicator iActivityIndicator;

  late ISlider iSlider;
  double _sliderValue = 50.0;
  String get _sliderValueStr => _sliderValue.toStringAsFixed(0);

  late ISwitch iSwitch;
  bool _swithValue = false;
  String get _swithValueStr => _swithValue ? 'ON' : 'OFF';

  @override
  void initState() {
    super.initState();
    _createWidgets();
  }

  _createWidgets() {
    iActivityIndicator =
        widgetsFactoryList[_selectedFactoryIndex].createActivityIndicator();
    iSlider = widgetsFactoryList[_selectedFactoryIndex].createSlider();
    iSwitch = widgetsFactoryList[_selectedFactoryIndex].createSwitch();
  }

  _setSelectedFactoryIndex(v) {
    setState(() {
      _selectedFactoryIndex = v;
      _createWidgets();
    });
  }

  _setSliderValue(v) {
    setState(() {
      _sliderValue = v;
    });
  }

  _setSwitchValue(v) {
    setState(() {
      _swithValue = v;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            iActivityIndicator.render(),
            SizedBox(
              height: 20,
            ),
            iSlider.render(_sliderValue, _setSliderValue),
            SizedBox(
              height: 20,
            ),
            iSwitch.render(_swithValue, _setSwitchValue),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
