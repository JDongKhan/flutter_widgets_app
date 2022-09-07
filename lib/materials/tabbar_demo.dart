import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class TabBarDemo extends StatefulWidget {
  const TabBarDemo({Key? key}) : super(key: key);

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo>
    with SingleTickerProviderStateMixin {
  final List<String> _tabValues = [
    '语文',
    '英语',
    '化学',
    '物理',
    '数学',
    '生物',
    '体育',
    '经济',
  ];

  TabController? _controller;
  @override
  initState() {
    super.initState();
    _controller = TabController(
      length: _tabValues.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          tabs: _tabValues.map((f) {
            return Text(f);
          }).toList(),
          controller: _controller,
          indicatorColor: Colors.red,
          indicatorSize: TabBarIndicatorSize.tab,
          isScrollable: true,
          labelColor: Colors.red,
          unselectedLabelColor: Colors.black,
          indicatorWeight: 5.0,
          labelStyle: const TextStyle(height: 2),
        ),
        Expanded(
          child: TabBarView(
            controller: _controller,
            children: _tabValues.map((f) {
              return Center(
                child: Text(f),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
