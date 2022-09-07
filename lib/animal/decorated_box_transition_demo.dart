import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class DecoratedBoxTransitionDemo extends StatefulWidget {
  const DecoratedBoxTransitionDemo({Key? key}) : super(key: key);

  @override
  State<DecoratedBoxTransitionDemo> createState() =>
      _DecoratedBoxTransitionDemoState();
}

class _DecoratedBoxTransitionDemoState extends State<DecoratedBoxTransitionDemo>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<Decoration>? _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);

    _animation = DecorationTween(
            begin: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(15)),
            end: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(55)))
        .animate(_animationController!);

    //开始动画
    _animationController?.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBoxTransition(
      decoration: _animation!,
      child: const SizedBox(
        height: 100,
        width: 100,
      ),
    );
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }
}
