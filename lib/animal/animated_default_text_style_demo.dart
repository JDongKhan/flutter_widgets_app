import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class AnimatedDefaultTextStyleDemo extends StatefulWidget {
  const AnimatedDefaultTextStyleDemo({Key? key}) : super(key: key);

  @override
  State<AnimatedDefaultTextStyleDemo> createState() =>
      _AnimatedDefaultTextStyleDemoState();
}

class _AnimatedDefaultTextStyleDemoState
    extends State<AnimatedDefaultTextStyleDemo>
    with SingleTickerProviderStateMixin {
  late TextStyle _style;
  @override
  void initState() {
    _style = const TextStyle(color: Colors.blue, fontSize: 14);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 200,
        ),
        AnimatedDefaultTextStyle(
          style: _style,
          duration: const Duration(seconds: 2),
          child: const Text('App'),
        ),
        const SizedBox(
          height: 100,
        ),
        TextButton(
          onPressed: () {
            setState(() {
              _style = const TextStyle(color: Colors.red, fontSize: 24);
            });
          },
          child: const Text('点我'),
        )
      ],
    );
  }
}
