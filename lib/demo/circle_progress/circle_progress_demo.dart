import 'package:flutter/material.dart';

import 'circle_distribute_progress.dart';
import 'circle_progress.dart';

///@Description TODO
///@Author jd
class CircleProgressDemo extends StatefulWidget {
  const CircleProgressDemo({Key? key}) : super(key: key);

  @override
  State<CircleProgressDemo> createState() => _CircleProgressDemoState();
}

class _CircleProgressDemoState extends State<CircleProgressDemo> {
  double value = 0.1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  value += 0.1;
                  if (value > 1) {
                    value = 0;
                  }
                });
              },
              child: const Text('设置进度条'),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 20, left: 20),
          child: CircleProgress(
            progress: Progress(value: value),
          ),
        ),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              child: CircleDistributeProgress(
                list: [
                  CircleValue(color: Colors.yellow, value: 0.1),
                  CircleValue(color: Colors.blue, value: 0.3),
                  CircleValue(color: Colors.green, value: 0.2),
                  CircleValue(color: Colors.red, value: 0.4),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              child: CircleDistributeProgress(
                strokeWidth: 32,
                list: [
                  CircleValue(color: Colors.yellow, value: 0.1),
                  CircleValue(color: Colors.blue, value: 0.3),
                  CircleValue(color: Colors.green, value: 0.2),
                  CircleValue(color: Colors.red, value: 0.4),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
