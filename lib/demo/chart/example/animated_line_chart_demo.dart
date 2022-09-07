import 'package:flutter/material.dart';

import '../animated_line_chart.dart';
import '../area_line_chart.dart';
import '../common/pair.dart';
import '../line_chart.dart';
import 'fake_chart_series.dart';

///@Description TODO
///@Author jd
class AnimatedLineChartDemo extends StatefulWidget {
  const AnimatedLineChartDemo({Key? key}) : super(key: key);

  @override
  State<AnimatedLineChartDemo> createState() => _AnimatedLineChartDemoState();
}

class _AnimatedLineChartDemoState extends State<AnimatedLineChartDemo>
    with FakeChartSeries {
  int chartIndex = 0;

  @override
  Widget build(BuildContext context) {
    Map<DateTime, double> line1 = createLine2();
    Map<DateTime, double> line2 = createLine2_2();

    LineChart chart;

    if (chartIndex == 0) {
      chart = LineChart.fromDateTimeMaps(
          [line1, line2], [Colors.green, Colors.blue], ['C', 'C'],
          tapTextFontWeight: FontWeight.w400);
    } else if (chartIndex == 1) {
      chart = LineChart.fromDateTimeMaps(
          [createLineAlmostSaveValues()], [Colors.green], ['C'],
          tapTextFontWeight: FontWeight.w400);
    } else {
      chart = AreaLineChart.fromDateTimeMaps(
          [line1], [Colors.red.shade900], ['C'],
          yAxisName: "Temperature",
          gradients: [Pair(Colors.yellow.shade400, Colors.red.shade700)]);
    }
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.black45),
          borderRadius: BorderRadius.all(Radius.circular(3))),
    );

    return Container(
      child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  TextButton(
                    style: flatButtonStyle,
                    child: Text(
                      'LineChart',
                      style: TextStyle(
                          color:
                              chartIndex == 0 ? Colors.black : Colors.black12),
                    ),
                    onPressed: () {
                      setState(() {
                        chartIndex = 0;
                      });
                    },
                  ),
                  TextButton(
                    style: flatButtonStyle,
                    child: Text('LineChart2',
                        style: TextStyle(
                            color: chartIndex == 1
                                ? Colors.black
                                : Colors.black12)),
                    onPressed: () {
                      setState(() {
                        chartIndex = 1;
                      });
                    },
                  ),
                  TextButton(
                    style: flatButtonStyle,
                    child: Text('AreaChart',
                        style: TextStyle(
                            color: chartIndex == 2
                                ? Colors.black
                                : Colors.black12)),
                    onPressed: () {
                      setState(() {
                        chartIndex = 2;
                      });
                    },
                  ),
                ],
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: AnimatedLineChart(
                chart,
                key: UniqueKey(),
                gridColor: Colors.black54,
                textStyle: TextStyle(fontSize: 10, color: Colors.black54),
                toolTipColor: Colors.white,
              ), //Unique key to force animations
            )),
            SizedBox(width: 200, height: 50, child: Text('')),
          ]),
    );
  }
}
