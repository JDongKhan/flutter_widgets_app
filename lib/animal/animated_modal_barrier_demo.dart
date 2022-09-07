import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class AnimatedModalBarrierDemo extends StatefulWidget {
  const AnimatedModalBarrierDemo({Key? key}) : super(key: key);

  @override
  State<AnimatedModalBarrierDemo> createState() =>
      _AnimatedModalBarrierDemoState();
}

class _AnimatedModalBarrierDemoState extends State<AnimatedModalBarrierDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Color?> _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);

    _animation = ColorTween(begin: Colors.red, end: Colors.blue)
        .animate(_animationController);

    //开始动画
    _animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 100,
        width: 100,
        child: AnimatedModalBarrier(
          color: _animation,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
