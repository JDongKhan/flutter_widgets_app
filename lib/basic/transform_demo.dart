import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class TransformDemo extends StatelessWidget {
  const TransformDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Transform(
          transform: Matrix4.rotationZ(0.5),
          child: Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
        ),
        Transform.scale(
          scale: 0.5,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
