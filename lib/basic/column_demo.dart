import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class ColumnDemo extends StatelessWidget {
  const ColumnDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('1'),
            const Text('2'),
            Expanded(
              child: Container(
                color: Colors.red,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
