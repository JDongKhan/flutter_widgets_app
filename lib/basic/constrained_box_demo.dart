import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class ConstrainedBoxDemo extends StatelessWidget {
  const ConstrainedBoxDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: 200,
          color: Colors.blue,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 60, maxWidth: 200),
            child: Container(height: 300, width: 300, color: Colors.red),
          ),
        ),
        Container(
          height: 200,
          width: 200,
          margin: const EdgeInsets.only(top: 50),
          color: Colors.green,
          child: UnconstrainedBox(
            child: Container(height: 300, width: 300, color: Colors.yellow),
          ),
        )
      ],
    );
  }
}
