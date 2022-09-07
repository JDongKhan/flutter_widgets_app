import 'package:flutter/cupertino.dart';

///@Description TODO
///@Author jd
class CupertinoSegmentedControlDemo extends StatefulWidget {
  const CupertinoSegmentedControlDemo({Key? key}) : super(key: key);

  @override
  State<CupertinoSegmentedControlDemo> createState() =>
      _CupertinoSegmentedControlDemoState();
}

class _CupertinoSegmentedControlDemoState
    extends State<CupertinoSegmentedControlDemo> {
  @override
  Widget build(BuildContext context) {
    return CupertinoSegmentedControl(
      children: {
        '语文': Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: const Text('语文'),
        ),
        '数学': Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: const Text('数学'),
        ),
        '体育': Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: const Text('体育'),
        )
      },
      onValueChanged: (value) {
        print(value);
      },
    );
  }
}
