import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class DefaultTextStyleTransitionDemo extends StatefulWidget {
  const DefaultTextStyleTransitionDemo({Key? key}) : super(key: key);

  @override
  State<DefaultTextStyleTransitionDemo> createState() =>
      _DefaultTextStyleTransitionDemoState();
}

class _DefaultTextStyleTransitionDemoState
    extends State<DefaultTextStyleTransitionDemo>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<TextStyle>? _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);

    _animation = TextStyleTween(
            begin: const TextStyle(color: Colors.blue, fontSize: 14),
            end: const TextStyle(color: Colors.red, fontSize: 24))
        .animate(_animationController!);

    //开始动画
    _animationController?.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyleTransition(
      style: _animation!,
      child: const Text('我是个不错的app'),
    );
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }
}
