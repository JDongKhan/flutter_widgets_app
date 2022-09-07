import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class RangeSliderDemo extends StatefulWidget {
  const RangeSliderDemo({Key? key}) : super(key: key);

  @override
  State<RangeSliderDemo> createState() => _RangeSliderDemoState();
}

class _RangeSliderDemoState extends State<RangeSliderDemo> {
  double _sliderValue = 0;
  RangeValues _rangeValues = const RangeValues(0, 1);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
          value: _sliderValue,
          onChanged: (v) {
            setState(() {
              _sliderValue = v;
            });
          },
        ),
        Slider(
          // min: 0,
          // max: 100,
          activeColor: Colors.red,
          inactiveColor: Colors.blue,
          label: '$_sliderValue',
          value: _sliderValue,
          onChanged: (v) {
            setState(() {
              _sliderValue = v;
            });
          },
        ),
        RangeSlider(
          values: _rangeValues,
          onChanged: (v) {
            setState(() {
              _rangeValues = v;
            });
          },
        ),
        CupertinoSlider(
          value: _sliderValue,
          onChanged: (v) {
            setState(() {
              _sliderValue = v;
            });
          },
        ),
        Slider.adaptive(
          value: _sliderValue,
          onChanged: (v) {
            setState(() {
              _sliderValue = v;
            });
          },
        )
      ],
    );
  }
}
