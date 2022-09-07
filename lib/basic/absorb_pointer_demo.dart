import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class AbsorbPointerDemo extends StatefulWidget {
  const AbsorbPointerDemo({Key? key}) : super(key: key);

  @override
  State<AbsorbPointerDemo> createState() => _AbsorbPointerDemoState();
}

class _AbsorbPointerDemoState extends State<AbsorbPointerDemo> {
  bool _absorbing = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            TextButton(
              child: const Text('点我锁死它们'),
              onPressed: () {
                setState(() {
                  _absorbing = true;
                });
              },
            ),
            TextButton(
              child: const Text('点我解锁它们'),
              onPressed: () {
                setState(() {
                  _absorbing = false;
                });
              },
            )
          ],
        ),
        const Text(
          'AbsorbPointer',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        AbsorbPointer(
          absorbing: _absorbing,
          child: Row(
            children: <Widget>[
              TextButton(
                child: const Text('1'),
                onPressed: () {
                  print('click red1');
                },
              ),
              TextButton(
                child: const Text('2'),
                onPressed: () {
                  print('click red2');
                },
              ),
              TextButton(
                child: const Text('3'),
                onPressed: () {
                  print('click red3');
                },
              ),
              TextButton(
                child: const Text('4'),
                onPressed: () {
                  print('click red4');
                },
              ),
            ],
          ),
        ),
        const Text(
          'IgnorePointer',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        IgnorePointer(
          ignoring: _absorbing,
          child: Row(
            children: <Widget>[
              TextButton(
                child: const Text('11'),
                onPressed: () {
                  print('click red11');
                },
              ),
              TextButton(
                child: const Text('21'),
                onPressed: () {
                  print('click red21');
                },
              ),
              TextButton(
                child: const Text('31'),
                onPressed: () {
                  print('click red31');
                },
              ),
              TextButton(
                child: const Text('41'),
                onPressed: () {
                  print('click red41');
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
