import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class AnimatedPaddingDemo extends StatefulWidget {
  const AnimatedPaddingDemo({Key? key}) : super(key: key);

  @override
  State<AnimatedPaddingDemo> createState() => _AnimatedPaddingDemoState();
}

class _AnimatedPaddingDemoState extends State<AnimatedPaddingDemo> {
  var _padding = 10.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.blue,
          child: AnimatedPadding(
            padding: EdgeInsets.symmetric(horizontal: _padding),
            duration: const Duration(seconds: 2),
            child: Container(
              color: Colors.red,
              child: const Text('内容'),
            ),
          ),
        ),
        TextButton(
          child: const Text('点我'),
          onPressed: () {
            setState(() {
              _padding = 50;
            });
          },
        ),
      ],
    );
  }
}
