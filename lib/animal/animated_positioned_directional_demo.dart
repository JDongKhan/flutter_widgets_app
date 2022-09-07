import 'package:flutter/material.dart';

///@Description TODO
///@Author jd

class AnimatedPositionedDirectionalDemo extends StatefulWidget {
  const AnimatedPositionedDirectionalDemo({Key? key}) : super(key: key);

  @override
  State<AnimatedPositionedDirectionalDemo> createState() =>
      _AnimatedPositionedDirectionalDemoState();
}

class _AnimatedPositionedDirectionalDemoState
    extends State<AnimatedPositionedDirectionalDemo> {
  double _start = 80;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Stack(
        children: <Widget>[
          AnimatedPositionedDirectional(
            start: _start,
            top: 100,
            width: 50,
            height: 50,
            duration: const Duration(seconds: 2),
            child: Container(color: Colors.red),
          ),
          TextButton(
            child: const Text('点我'),
            onPressed: () {
              setState(() {
                _start = 180;
              });
            },
          )
        ],
      ),
    );
  }
}
