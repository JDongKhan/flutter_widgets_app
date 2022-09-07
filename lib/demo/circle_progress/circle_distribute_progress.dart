import 'dart:math';

import 'package:flutter/material.dart';

///@Description TODO
///@Author jd

///@Description TODO
///@Author jd
///信息描述类 [value]为进度，在0~1之间,进度条颜色[color]，
///未完成的颜色[backgroundColor],圆的半径[radius],线宽[strokeWidth]
///小点的个数[dotCount] 样式[style] 完成后的显示文字[completeText]
class CircleValue {
  double value;
  Color color;
  CircleValue({
    this.value = 0,
    this.color = Colors.red,
  });
}

class CircleDistributeProgress extends StatefulWidget {
  final List<CircleValue> list;
  final double strokeWidth;
  const CircleDistributeProgress({
    Key? key,
    required this.list,
    this.strokeWidth = 10,
  }) : super(key: key);
  @override
  State createState() => _CircleDistributeProgressState();
}

class _CircleDistributeProgressState extends State<CircleDistributeProgress> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      color: Colors.black87,
      child: CustomPaint(
        painter: ProgressPainter(widget.list, strokeWidth: widget.strokeWidth),
      ),
    );
  }
}

class ProgressPainter extends CustomPainter {
  final List<CircleValue> list;
  double strokeWidth;
  ProgressPainter(
    this.list, {
    this.strokeWidth = 1,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = Offset.zero & size;
    canvas.clipRect(rect); //裁剪区域
    _drawProgress(canvas, size);
  }

  _drawProgress(Canvas canvas, Size size) {
    canvas.save();
    double minSize = min(size.width, size.height) / 2;
    double radius = minSize - strokeWidth;
    //背景
    Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.grey
      ..strokeWidth = strokeWidth;
    canvas.drawCircle(Offset(minSize, minSize), radius, paint);
    _drawArc(canvas, minSize);
    canvas.restore();
  }

  ///画分布图
  void _drawArc(Canvas canvas, double radius) {
    // double startAngle = -90 / 180 * pi;
    double startAngle = 0;
    for (CircleValue value in list) {
      //进度
      Paint paint = Paint()
        ..style = PaintingStyle.stroke
        ..color = value.color
        ..strokeWidth = strokeWidth
        ..strokeCap = StrokeCap.butt;
      double sweepAngle = value.value * 2 * pi; //完成角度
      // print('startAngle:$startAngle,sweepAngle:$sweepAngle');
      canvas.drawArc(
        Rect.fromLTRB(strokeWidth, strokeWidth, radius * 2 - strokeWidth,
            radius * 2 - strokeWidth),
        startAngle,
        sweepAngle,
        false,
        paint,
      );
      startAngle += sweepAngle;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
