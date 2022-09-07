import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class CupertinoTabBarDemo extends StatelessWidget {
  const CupertinoTabBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: Colors.white,
        activeColor: Colors.red,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'tab1'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'tab2'),
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          defaultTitle: '老王',
          builder: (context) {
            return Center(
              child: Text('$index'),
            );
          },
        );
      },
    );
  }
}
