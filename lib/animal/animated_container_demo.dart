import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class AnimatedContainerDemo extends StatefulWidget {
  const AnimatedContainerDemo({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerDemo> createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  bool click = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            click = !click;
          });
        },
        child: AnimatedContainer(
          height: click ? 200 : 100,
          width: click ? 200 : 100,
          color: Colors.blue,
          duration: const Duration(seconds: 3),

        ),
      ),
    );
  }
}
