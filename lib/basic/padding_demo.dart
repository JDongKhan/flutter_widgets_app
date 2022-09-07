import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class PaddingDemo extends StatelessWidget {
  const PaddingDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        color: Colors.red,
        child: const Text('1131312'),
      ),
    );
  }
}
