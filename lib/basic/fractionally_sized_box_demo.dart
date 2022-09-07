import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class FractionallySizedBoxDemo extends StatelessWidget {
  const FractionallySizedBoxDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        height: 400,
        child: FractionallySizedBox(
          widthFactor: .7,
          child: TextButton(
            onPressed: () {},
            child: const Text('button'),
          ),
        ),
      ),
    );
  }
}
