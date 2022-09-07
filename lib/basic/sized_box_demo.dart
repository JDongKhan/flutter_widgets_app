import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class SizedBoxDemo extends StatelessWidget {
  const SizedBoxDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 60,
        width: 200,
        child: TextButton(
          onPressed: () {},
          child: const Text('this is SizedBox'),
        ),
      ),
    );
  }
}
