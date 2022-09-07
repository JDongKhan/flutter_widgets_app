import 'dart:math';

import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
///信息描述类 [value]为进度，在0~1之间,进度条颜色[color]，
///未完成的颜色[backgroundColor],圆的半径[radius],线宽[strokeWidth]
///小点的个数[dotCount] 样式[style] 完成后的显示文字[completeText]
class Progress {
  double value;
  Color color;
  Color backgroundColor;
  double strokeWidth;
  Progress({
    this.value = 0,
    this.color = Colors.red,
    this.backgroundColor = Colors.yellow,
    this.strokeWidth = 10,
  });
}

class CircleProgress extends StatefulWidget {
  final Progress progress;
  const CircleProgress({Key? key, required this.progress}) : super(key: key);
  @override
  State createState() => _CircleProgressState();
}

class _CircleProgressState extends State<CircleProgress> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.grey,
      child: CustomPaint(
        painter: ProgressPainter(widget.progress),
      ),
    );
  }
}

class ProgressPainter extends CustomPainter {
  Progress _progress;
  late Paint _paint;

  ProgressPainter(
    this._progress,
  ) {
    _paint = Paint();
  }

  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = Offset.zero & size;
    canvas.clipRect(rect); //裁剪区域
    _drawProgress(canvas, size);
  }

  _drawProgress(Canvas canvas, Size size) {
    canvas.save();
    double minSize = min(size.width, size.height) / 2;
    double radius = minSize - _progress.strokeWidth;
    _paint //背景
      ..style = PaintingStyle.stroke
      ..color = _progress.backgroundColor
      ..strokeWidth = _progress.strokeWidth;
    canvas.drawCircle(Offset(minSize, minSize), radius, _paint);

    _paint //进度
      ..color = _progress.color
      ..strokeWidth = _progress.strokeWidth
      ..strokeCap = StrokeCap.round;
    double sweepAngle = _progress.value * 360; //完成角度
    canvas.drawArc(
        Rect.fromLTRB(
            _progress.strokeWidth,
            _progress.strokeWidth,
            minSize * 2 - _progress.strokeWidth,
            minSize * 2 - _progress.strokeWidth),
        -90 / 180 * pi,
        sweepAngle / 180 * pi,
        false,
        _paint);
    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
