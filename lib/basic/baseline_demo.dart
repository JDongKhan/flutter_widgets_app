import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class BaselineDemo extends StatelessWidget {
  const BaselineDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const Baseline(
          baseline: 50.0,
          baselineType: TextBaseline.alphabetic,
          child: Text(
            'TjTjTj',
            style: TextStyle(
              fontSize: 20.0,
              textBaseline: TextBaseline.alphabetic,
            ),
          ),
        ),
        Baseline(
          baseline: 50.0,
          baselineType: TextBaseline.alphabetic,
          child: Container(
            width: 30.0,
            height: 30.0,
            color: Colors.red,
          ),
        ),
        const Baseline(
          baseline: 50.0,
          baselineType: TextBaseline.alphabetic,
          child: Text(
            'RyRyRy',
            style: TextStyle(
              fontSize: 35.0,
              textBaseline: TextBaseline.alphabetic,
            ),
          ),
        ),
      ],
    );
  }
}
