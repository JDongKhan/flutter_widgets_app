import 'dart:ui';

import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class CustomPaintDemo extends StatelessWidget {
  const CustomPaintDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 100,
        height: 100,
        child: CustomPaint(
          painter: MyCustomPainter(),
        ),
      ),
    );
  }
}

class MyCustomPainter extends CustomPainter {
  final Paint _paint = Paint()
    ..color = Colors.red
    ..strokeWidth = 3;

  @override
  void paint(Canvas canvas, Size size) {
    var points = [
      const Offset(0, 0),
      Offset(size.width / 2, size.height / 2),
      Offset(size.width, size.height),
    ];
    canvas.drawPoints(PointMode.points, points, _paint);

    canvas.drawLine(
        const Offset(0, 0), Offset(size.width, size.height), _paint);

    var path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..close();
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(MyCustomPainter oldDelegate) {
    return this != oldDelegate;
  }
}
