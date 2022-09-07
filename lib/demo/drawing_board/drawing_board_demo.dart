import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class DrawingBoardDemo extends StatefulWidget {
  const DrawingBoardDemo({Key? key}) : super(key: key);

  @override
  State<DrawingBoardDemo> createState() => _DrawingBoardDemoState();
}

class _DrawingBoardDemoState extends State<DrawingBoardDemo> {
  final List<List<Offset>> _path = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            TextButton(
              onPressed: () {
                _path.clear();
                setState(() {});
              },
              child: const Text('重置'),
            ),
            TextButton(
              onPressed: () {
                if (_path.isNotEmpty) {
                  _path.removeLast();
                  setState(() {});
                }
              },
              child: const Text('回退'),
            ),
          ],
        ),
        Expanded(
          child: Listener(
            onPointerDown: (PointerDownEvent pointerDownEvent) {
              setState(() {
                _path.add([pointerDownEvent.localPosition]);
              });
            },
            onPointerMove: (PointerMoveEvent pointerMoveEvent) {
              setState(() {
                _path[_path.length - 1].add(pointerMoveEvent.localPosition);
              });
            },
            onPointerUp: (PointerUpEvent pointerUpEvent) {
              setState(() {
                _path[_path.length - 1].add(pointerUpEvent.localPosition);
              });
            },
            onPointerCancel: (PointerCancelEvent pointerCancelEvent) {
              setState(() {
                _path[_path.length - 1].add(pointerCancelEvent.localPosition);
              });
            },
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: CustomPaint(
                painter: DrawingBoardPainter(_path),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class DrawingBoardPainter extends CustomPainter {
  final List<List<Offset>> path;
  DrawingBoardPainter(this.path);
  final Paint _paint = Paint()
    ..color = Colors.red
    ..style = PaintingStyle.stroke
    ..strokeWidth = 3;

  @override
  void paint(Canvas canvas, Size size) {
    // Rect rect = Offset.zero & size;
    // canvas.clipRect(rect); //裁剪区域
    path.forEach((list) {
      Path _path = Path();
      for (int i = 0; i < list.length; i++) {
        if (i == 0) {
          _path.moveTo(list[i].dx, list[i].dy);
        } else {
          _path.lineTo(list[i].dx, list[i].dy);
        }
      }
      canvas.drawPath(_path, _paint);
    });
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
