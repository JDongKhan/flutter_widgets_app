import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class AnimatedSwitcherDemo extends StatefulWidget {
  const AnimatedSwitcherDemo({Key? key}) : super(key: key);

  @override
  State<AnimatedSwitcherDemo> createState() => _AnimatedSwitcherDemoState();
}

class _AnimatedSwitcherDemoState extends State<AnimatedSwitcherDemo> {
  var _currChild = Container(
    key: const ValueKey("1"),
    height: 300,
    width: 300,
    color: Colors.red,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedSwitcher(
          duration: const Duration(seconds: 1),
          child: _currChild,
        ),
        TextButton(
          child: const Text('点我'),
          onPressed: () {
            setState(() {
              _currChild = Container(
                key: const ValueKey("2"),
                height: 100,
                width: 100,
                color: Colors.blue,
              );
            });
          },
        ),
      ],
    );
  }
}
