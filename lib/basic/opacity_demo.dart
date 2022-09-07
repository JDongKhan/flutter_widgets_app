import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class OpacityDemo extends StatelessWidget {
  const OpacityDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 80,
              width: 80,
              color: Colors.red,
              alignment: Alignment.center,
              child: const Text(
                '1',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              height: 80,
              width: 80,
              color: Colors.green,
              alignment: Alignment.center,
              child: const Text(
                '2',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              height: 80,
              width: 80,
              color: Colors.blue,
              alignment: Alignment.center,
              child: const Text(
                '3',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 80,
              width: 80,
              color: Colors.red,
              alignment: Alignment.center,
              child: const Text(
                '1',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Opacity(
              opacity: 0.0,
              child: Container(
                height: 80,
                width: 80,
                color: Colors.green,
                alignment: Alignment.center,
                child: const Text(
                  '2',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              height: 80,
              width: 80,
              color: Colors.blue,
              alignment: Alignment.center,
              child: const Text(
                '3',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
