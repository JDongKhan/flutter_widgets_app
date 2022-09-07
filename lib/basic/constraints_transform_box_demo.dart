import 'package:flutter/material.dart';

///@Description TODO
///@Author jd

class ConstraintsTransformBoxDemo extends StatelessWidget {
  const ConstraintsTransformBoxDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstraintsTransformBox(
        constraintsTransform: (BoxConstraints boxConstraints) {
          return const BoxConstraints(
              maxWidth: 100, maxHeight: 100, minWidth: 80);
        },
        child: Container(
          color: Colors.red,
          child: const Text('你好'),
        ),
      ),
    );
  }
}
