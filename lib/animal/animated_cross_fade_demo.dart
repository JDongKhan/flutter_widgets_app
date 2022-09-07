import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class AnimatedCrossFadeDemo extends StatefulWidget {
  const AnimatedCrossFadeDemo({Key? key}) : super(key: key);

  @override
  State<AnimatedCrossFadeDemo> createState() => _AnimatedCrossFadeDemoState();
}

class _AnimatedCrossFadeDemoState extends State<AnimatedCrossFadeDemo> {
  bool _showFirst = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          child: const Text('切换'),
          onPressed: () {
            setState(() {
              _showFirst = !_showFirst;
            });
          },
        ),
        AnimatedCrossFade(
          duration: const Duration(seconds: 1),
          crossFadeState:
              _showFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          firstChild: Container(
            height: 150,
            width: 150,
            alignment: Alignment.center,
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
            child: const Text(
              'first child',
              style: TextStyle(color: Colors.white),
            ),
          ),
          secondChild: Container(
            height: 150,
            width: 150,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.orange,
                borderRadius: BorderRadius.circular(20)),
            child: const Text(
              'second child',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
