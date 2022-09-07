import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class FlexibleDemo extends StatelessWidget {
  const FlexibleDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //第一行
        Row(
          children: <Widget>[
            Container(
              color: Colors.blue,
              height: 50,
              width: 100,
            ),
            Flexible(
                child: Container(
              color: Colors.red,
              height: 50,
            )),
            Container(
              color: Colors.blue,
              height: 50,
              width: 100,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        //第二行
        Row(
          children: <Widget>[
            Container(
              color: Colors.blue,
              height: 50,
              width: 100,
            ),
            const Spacer(),
            Container(
              color: Colors.blue,
              height: 50,
              width: 100,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        //第三行
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.blue,
                alignment: Alignment.center,
                child: const Text(
                  '1 Flex/ 6 Total',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.red,
                alignment: Alignment.center,
                child: const Text(
                  '2 Flex/ 6 Total',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Flexible(
              flex: 3,
              child: Container(
                color: Colors.green,
                alignment: Alignment.center,
                child: const Text(
                  '3 Flex/ 6 Total',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        //第四行
        Row(
          children: <Widget>[
            Container(
              color: Colors.blue,
              height: 50,
              width: 100,
            ),
            Flexible(
              child: Container(
                color: Colors.red,
                height: 50,
                child: const Text(
                  'Container',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              color: Colors.blue,
              height: 50,
              width: 100,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        //第五行
        Row(
          children: <Widget>[
            Container(
              color: Colors.blue,
              height: 50,
              width: 100,
            ),
            Flexible(
              child: Container(
                color: Colors.red,
                height: 50,
                alignment: Alignment.center,
                child: const Text(
                  'Container',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              color: Colors.blue,
              height: 50,
              width: 100,
            ),
          ],
        ),
      ],
    );
  }
}
