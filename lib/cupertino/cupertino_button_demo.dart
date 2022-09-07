import 'package:flutter/cupertino.dart';

///@Description TODO
///@Author jd
class CupertinoButtonDemo extends StatefulWidget {
  const CupertinoButtonDemo({Key? key}) : super(key: key);

  @override
  State<CupertinoButtonDemo> createState() => _CupertinoButtonDemoState();
}

class _CupertinoButtonDemoState extends State<CupertinoButtonDemo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CupertinoButton(
          onPressed: () {},
          child: const Text('按钮'),
        ),
      ],
    );
  }
}
