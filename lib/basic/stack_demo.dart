import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class StackDemo extends StatelessWidget {
  const StackDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        PositionedDirectional(
          start: 10,
          end: 10,
          top: 10,
          bottom: 10,
          child: Container(color: Colors.red),
        ),
        Container(
          height: 200,
          width: 200,
          color: Colors.green,
        ),
        Positioned(
          left: 100,
          right: 100,
          bottom: 10,
          top: 10,
          child: Container(
            color: Colors.blue,
          ),
        )
      ],
    );
  }
}
