import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class CupertinoActionSheetDemo extends StatefulWidget {
  const CupertinoActionSheetDemo({Key? key}) : super(key: key);

  @override
  State<CupertinoActionSheetDemo> createState() =>
      _CupertinoActionSheetDemoState();
}

class _CupertinoActionSheetDemoState extends State<CupertinoActionSheetDemo> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showCupertinoModalPopup(
            context: context,
            builder: (context) {
              return CupertinoActionSheet(
                title: const Text('提示'),
                message: const Text('是否要删除当前项？'),
                actions: <Widget>[
                  CupertinoActionSheetAction(
                    onPressed: () {},
                    isDefaultAction: true,
                    child: const Text('删除'),
                  ),
                  CupertinoActionSheetAction(
                    onPressed: () {},
                    isDestructiveAction: true,
                    child: const Text('暂时不删'),
                  ),
                ],
                cancelButton: CupertinoActionSheetAction(
                  child: const Text('取消'),
                  onPressed: () {
                    Navigator.of(context).pop('cancel');
                  },
                ),
              );
            });
      },
      child: const Text('点我'),
    );
  }
}
