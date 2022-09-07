import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class AnimatedOpacityDemo extends StatefulWidget {
  const AnimatedOpacityDemo({Key? key}) : super(key: key);

  @override
  State<AnimatedOpacityDemo> createState() => _AnimatedOpacityDemoState();
}

class _AnimatedOpacityDemoState extends State<AnimatedOpacityDemo> {
  var _opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedOpacity(
          opacity: _opacity,
          duration: const Duration(seconds: 2),
          child: Container(
            height: 60,
            width: 150,
            color: Colors.blue,
          ),
        ),
        TextButton(
          child: const Text('点我'),
          onPressed: () {
            setState(() {
              _opacity = 0;
            });
          },
        )
      ],
    );
  }
}
