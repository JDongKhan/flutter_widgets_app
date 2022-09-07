import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class CenterDemo extends StatelessWidget {
  const CenterDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      width: 200,
      height: 200,
      child: const Center(
        child: Text(
          '234324234234',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
