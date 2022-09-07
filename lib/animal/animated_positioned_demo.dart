import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class AnimatedPositionedDemo extends StatefulWidget {
  const AnimatedPositionedDemo({Key? key}) : super(key: key);

  @override
  State<AnimatedPositionedDemo> createState() => _AnimatedPositionedDemoState();
}

class _AnimatedPositionedDemoState extends State<AnimatedPositionedDemo> {
  var _top = 50.0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          TextButton(
            child: const Text('点我'),
            onPressed: () {
              setState(() {
                _top = 180;
              });
            },
          ),
          AnimatedPositioned(
            top: _top,
            left: 0,
            duration: const Duration(seconds: 2),
            child: Container(height: 50, width: 50, color: Colors.red),
          )
        ],
      ),
    );
  }
}
