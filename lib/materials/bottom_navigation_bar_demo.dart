import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class BottomNavigationBarDemo extends StatelessWidget {
  const BottomNavigationBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(label: '首页', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: '书籍', icon: Icon(Icons.book)),
          BottomNavigationBarItem(label: '我的', icon: Icon(Icons.perm_identity)),
        ],
      ),
    );
  }
}
