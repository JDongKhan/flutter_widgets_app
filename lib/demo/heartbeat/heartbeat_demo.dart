import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import 'heartbeat_widget.dart';

///@Description TODO
///@Author jd
class HeartbeatDemo extends StatefulWidget {
  const HeartbeatDemo({Key? key}) : super(key: key);

  @override
  State<HeartbeatDemo> createState() => _HeartbeatDemoState();
}

class _HeartbeatDemoState extends State<HeartbeatDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  Timer? _timer;
  late List<ChartBean> list;

  late List<ChartBean> list1;

  final int column = 100;
  int titleValue = 10;
  bool right = false;

  ChartBean? tipChartBean;

  void _addNewData() {
    if (list.length > column) {
      ChartBean bean = list.removeAt(0);
      if (bean == tipChartBean) {
        tipChartBean = null;
      }
    }
    titleValue++;
    list.add(
        ChartBean(text: '$titleValue', value: Random().nextInt(100) + 20.0));

    if (list1.length > column) {
      ChartBean bean = list1.removeAt(0);
      if (bean == tipChartBean) {
        tipChartBean = null;
      }
    }
    list1.add(
        ChartBean(text: '$titleValue', value: Random().nextInt(100) + 20.0));
  }

  void _initData() {
    list = List.generate(
        10,
        (index) =>
            ChartBean(text: '$index', value: Random().nextInt(100) + 20.0));
    list1 = List.generate(
        10,
        (index) =>
            ChartBean(text: '$index', value: Random().nextInt(100) + 20.0));
  }

  @override
  initState() {
    _initData();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    super.initState();
  }

  @override
  dispose() {
    _timer?.cancel();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            TextButton(
              child: const Text('重置'),
              onPressed: () {
                setState(() {
                  _initData();
                });
                _animationController.forward();
              },
            ),
            TextButton(
              child: const Text('手动添加数据'),
              onPressed: () {
                setState(() {
                  _addNewData();
                });
                _animationController.forward();
              },
            ),
            TextButton(
              child: const Text('定时添加数据'),
              onPressed: () {
                _timer?.cancel();
                _timer =
                    Timer.periodic(const Duration(milliseconds: 40), (timer) {
                  setState(() {
                    _addNewData();
                  });
                  _animationController.forward();
                });
              },
            ),
            TextButton(
              child: const Text('取消定时'),
              onPressed: () {
                _timer?.cancel();
              },
            ),
            TextButton(
              child: const Text('布局方向'),
              onPressed: () {
                setState(() {
                  right = !right;
                });
              },
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(left: 40),
          width: 400,
          height: 300,
          child: GestureDetector(
            onTapDown: (TapDownDetails details) {
              print(details.localPosition);
              for (var element in list) {
                if (element.rect?.contains(details.localPosition) ?? false) {
                  tipChartBean = element;
                  setState(() {});
                  print('找到了');
                  break;
                }
              }
            },
            child: CustomPaint(
              painter: HeartBeatPainter(
                tipChartBean: tipChartBean,
                maxColumn: column,
                right: right,
                [
                  ChartBeanList(list),
                  ChartBeanList(list1, lineColor: Colors.white)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
