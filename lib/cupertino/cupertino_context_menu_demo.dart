import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class CupertinoContextMenuDemo extends StatefulWidget {
  const CupertinoContextMenuDemo({Key? key}) : super(key: key);

  @override
  State<CupertinoContextMenuDemo> createState() =>
      _CupertinoContextMenuDemoState();
}

class _CupertinoContextMenuDemoState extends State<CupertinoContextMenuDemo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CupertinoContextMenu(
          actions: <Widget>[
            CupertinoContextMenuAction(
              child: const Text('Action one'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            CupertinoContextMenuAction(
              child: const Text('Action two'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
          child: Container(
            color: Colors.red,
            height: 60,
            width: 100,
          ),
        ),
        CupertinoContextMenu(
          previewBuilder: (
            BuildContext context,
            Animation<double> animation,
            Widget child,
          ) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10 * animation.value),
                color: Colors.red,
              ),
              height: 60,
              width: 100,
            );
          },
          actions: <Widget>[
            CupertinoContextMenuAction(
              child: const Text('Action one'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            CupertinoContextMenuAction(
              child: const Text('Action two'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
          child: Container(
            color: Colors.blue,
            height: 60,
            width: 100,
          ),
        ),
      ],
    );
  }
}
