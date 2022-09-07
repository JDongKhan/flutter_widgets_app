import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class AnimatedPhysicalModelDemo extends StatefulWidget {
  const AnimatedPhysicalModelDemo({Key? key}) : super(key: key);

  @override
  State<AnimatedPhysicalModelDemo> createState() =>
      _AnimatedPhysicalModelDemoState();
}

class _AnimatedPhysicalModelDemoState extends State<AnimatedPhysicalModelDemo> {
  bool _animated = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextButton(
            child: const Text('动画'),
            onPressed: () {
              setState(() {
                _animated = !_animated;
              });
            },
          ),
          _buildAnimatedPhysicalModel(),
        ],
      ),
    );
  }

  _buildAnimatedPhysicalModel() {
    return AnimatedPhysicalModel(
      borderRadius: BorderRadius.circular(_animated ? 20 : 10),
      shape: BoxShape.rectangle,
      color: _animated ? Colors.blue : Colors.red,
      elevation: _animated ? 18 : 8,
      shadowColor: !_animated ? Colors.blue : Colors.red,
      duration: const Duration(seconds: 1),
      child: const SizedBox(
        height: 100,
        width: 100,
      ),
    );
  }

}
