import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class ColoredBoxDemo extends StatelessWidget {
  const ColoredBoxDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: ColoredBox(
        color: Colors.red,
        child: SizedBox(
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
