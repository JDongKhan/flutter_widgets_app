import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class ProgressIndicatorDemo extends StatelessWidget {
  const ProgressIndicatorDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        LinearProgressIndicator(),
        SizedBox(
          height: 10,
        ),
        LinearProgressIndicator(
          value: 0.3,
        ),
        SizedBox(
          height: 10,
        ),
        LinearProgressIndicator(
          value: 0.3,
          backgroundColor: Colors.greenAccent,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
        ),
        SizedBox(
          height: 10,
        ),
        CircularProgressIndicator(),
        SizedBox(
          height: 10,
        ),
        CircularProgressIndicator(
          value: 0.3,
          backgroundColor: Colors.greenAccent,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
        ),
        SizedBox(
          height: 10,
        ),
        CupertinoActivityIndicator(
          radius: 10,
        ),
        SizedBox(
          height: 10,
        ),
        RefreshProgressIndicator(),
        SizedBox(
          height: 10,
        ),
        RefreshProgressIndicator(
          backgroundColor: Colors.greenAccent,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
          strokeWidth: 5.0,
        ),
      ],
    );
  }
}
