import 'package:flutter/material.dart';

///@Description TODO
///@Author jd

class OverflowBoxDemo extends StatelessWidget {
  const OverflowBoxDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.green,
          width: 200.0,
          height: 200.0,
          padding: const EdgeInsets.all(5.0),
          child: OverflowBox(
            alignment: Alignment.topLeft,
            maxWidth: 300.0,
            maxHeight: 500.0,
            child: Container(
              color: const Color(0x33FF00FF),
              width: 400.0,
              height: 400.0,
            ),
          ),
        ),
        Container(
          color: Colors.blue[50],
          child: SizedOverflowBox(
            size: const Size(100.0, 100.0),
            alignment: AlignmentDirectional.bottomStart,
            child: Container(
              height: 50.0,
              width: 150.0,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
