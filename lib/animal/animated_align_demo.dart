import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class AnimatedAlignDemo extends StatefulWidget {
  const AnimatedAlignDemo({Key? key}) : super(key: key);

  @override
  State<AnimatedAlignDemo> createState() => _AnimatedAlignDemoState();
}

class _AnimatedAlignDemoState extends State<AnimatedAlignDemo> {
  var _alignment = Alignment.topLeft;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.lightBlue,
      child: AnimatedAlign(
        alignment: _alignment,
        duration: const Duration(seconds: 2),
        child: IconButton(
          icon: const Icon(
            Icons.print,
            color: Colors.red,
            size: 30,
          ),
          onPressed: () {
            setState(() {
              _alignment = Alignment.bottomRight;
            });
          },
        ),
      ),
    );
  }
}
