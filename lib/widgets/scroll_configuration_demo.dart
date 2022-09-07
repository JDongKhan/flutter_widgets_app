import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class ScrollConfigurationDemo extends StatelessWidget {
  const ScrollConfigurationDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const ScrollBehavior(),
      child: ListView.separated(
        controller: ScrollController(),
        itemBuilder: (BuildContext context, int index) {
          return Text('Item$index');
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
        itemCount: 50,
      ),
    );
  }
}
