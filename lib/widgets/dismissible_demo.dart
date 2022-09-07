import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class DismissibleDemo extends StatelessWidget {
  const DismissibleDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Dismissible(
          key: const ValueKey('key'),
          child: Container(
            height: 80,
            color: Colors.red,
          ),
        ),
        Dismissible(
          key: const ValueKey('key1'),
          confirmDismiss: (DismissDirection direction) async {
            return false;
          },
          child: Container(
            height: 80,
            color: Colors.blue,
          ),
        ),
        Dismissible(
          key: const ValueKey('key2'),
          confirmDismiss: (DismissDirection direction) async {
            return false;
          },
          movementDuration: const Duration(seconds: 1),
          dismissThresholds: const {DismissDirection.endToStart: 0.8},
          crossAxisEndOffset: 0.5,
          child: Container(
            height: 80,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
