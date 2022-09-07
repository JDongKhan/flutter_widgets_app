import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class AspectRatioDemo extends StatelessWidget {
  const AspectRatioDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: AspectRatio(
        aspectRatio: 2 / 1,
        child: Container(color: Colors.red),
      ),
    );
  }
}
