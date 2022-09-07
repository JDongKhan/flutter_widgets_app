import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class SnackBarActionDemo extends StatelessWidget {
  const SnackBarActionDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: const Text('点我'),
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('A SnackBar has been shown.'),
          ),
        );
      },
    );
  }
}
