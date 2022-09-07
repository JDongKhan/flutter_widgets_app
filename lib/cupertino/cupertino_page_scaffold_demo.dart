import 'package:flutter/cupertino.dart';

///@Description TODO
///@Author jd
class CupertinoPageScaffoldDemo extends StatefulWidget {
  const CupertinoPageScaffoldDemo({Key? key}) : super(key: key);

  @override
  State<CupertinoPageScaffoldDemo> createState() =>
      _CupertinoPageScaffoldDemoState();
}

class _CupertinoPageScaffoldDemoState extends State<CupertinoPageScaffoldDemo> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      // Uncomment to change the background color
      // backgroundColor: CupertinoColors.systemPink,
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Sample Code'),
      ),
      child: ListView(
        children: <Widget>[
          CupertinoButton(
            onPressed: () => setState(() => _count++),
            child: const Icon(CupertinoIcons.add),
          ),
          Center(
            child: Text('You have pressed the button $_count times.'),
          ),
        ],
      ),
    );
  }
}
