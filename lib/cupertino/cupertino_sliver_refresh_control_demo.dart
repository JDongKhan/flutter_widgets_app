import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///@Description TODO
///@Author jd

class CupertinoSliverRefreshControlDemo extends StatefulWidget {
  const CupertinoSliverRefreshControlDemo({Key? key}) : super(key: key);

  @override
  State<CupertinoSliverRefreshControlDemo> createState() =>
      _CupertinoSliverRefreshControlDemoState();
}

class _CupertinoSliverRefreshControlDemoState
    extends State<CupertinoSliverRefreshControlDemo> {
  var _list = [1, 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverRefreshControl(
          onRefresh: () async {
            setState(() {
              _list.add(_list.length + 1);
            });
          },
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((content, index) {
            return ListTile(
              title: Text('${_list[index]}'),
            );
          }, childCount: _list.length),
        )
      ],
    );
  }
}
