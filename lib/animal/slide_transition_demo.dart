import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class SlideTransitionDemo extends StatefulWidget {
  const SlideTransitionDemo({Key? key}) : super(key: key);

  @override
  State<SlideTransitionDemo> createState() => _SlideTransitionDemoState();
}

class _SlideTransitionDemoState extends State<SlideTransitionDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);

    _animation =
        Tween(begin: const Offset(0.0, 0.0), end: const Offset(1.0, 1.0))
            .animate(_animationController);
    _animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.blue,
          height: 100,
          width: 100,
          child: SlideTransition(
            position: _animation,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
