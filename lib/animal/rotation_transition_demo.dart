import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class RotationTransitionDemo extends StatefulWidget {
  const RotationTransitionDemo({Key? key}) : super(key: key);

  @override
  State<RotationTransitionDemo> createState() => _RotationTransitionDemoState();
}

class _RotationTransitionDemoState extends State<RotationTransitionDemo>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<double>? _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);

    _animation = Tween(begin: .0, end: .5).animate(_animationController!);

    //开始动画
    _animationController?.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _animation!,
      child: Container(
        height: 200,
        width: 200,
        color: Colors.red,
      ),
    );
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }
}
