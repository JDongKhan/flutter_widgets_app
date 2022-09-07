import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/demo/bar_chart/bar_chart.dart';

///@Description TODO
///@Author jd
class BarChartDemo extends StatefulWidget {
  const BarChartDemo({Key? key}) : super(key: key);

  @override
  State<BarChartDemo> createState() => _BarChartDemoState();
}

class _BarChartDemoState extends State<BarChartDemo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleDistributeProgress(
          list: [
            BarValue(value: 10, color: Colors.red),
            BarValue(value: 100, color: Colors.yellow),
            BarValue(value: 150, color: Colors.green),
            BarValue(value: 120, color: Colors.blue),
          ],
        ),
      ],
    );
  }
}
