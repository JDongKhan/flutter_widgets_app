import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

///@Description TODO
///@Author jd
class SliverDemo extends StatefulWidget {
  const SliverDemo({Key? key}) : super(key: key);

  @override
  State<SliverDemo> createState() => _SliverDemoState();
}

class _SliverDemoState extends State<SliverDemo> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: ScrollController(),
      slivers: <Widget>[
        const SliverToBoxAdapter(
          child: Text('SliverLayoutBuilder'),
        ),
        SliverLayoutBuilder(
          builder: (BuildContext context, SliverConstraints constraints) {
            print('constraints:$constraints');
            return const SliverToBoxAdapter(
              child: Text('2313123123123'),
            );
          },
        ),
        const SliverToBoxAdapter(
          child: Text('SliverPersistentHeader'),
        ),
        SliverPersistentHeader(
          pinned: true,
          delegate: MySliverPersistentHeaderDelegate(),
        ),
        const SliverToBoxAdapter(
          child: Text('SliverPrototypeExtentList'),
        ),
        SliverPrototypeExtentList(
          prototypeItem: const Text(
            'SliverPrototypeExtentList',
            style: TextStyle(fontSize: 28),
          ),
          delegate: SliverChildBuilderDelegate((content, index) {
            return Container(
              color: Colors.primaries[index % Colors.primaries.length],
            );
          }, childCount: 50),
        ),
        const SliverToBoxAdapter(
          child: Text('SliverGrid'),
        ),
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 3),
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            return Container(
              color: Colors.primaries[index % Colors.primaries.length],
            );
          }, childCount: 10),
        ),
        const SliverToBoxAdapter(
          child: Text('SliverFillViewport'),
        ),
        SliverFillViewport(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                color: Colors.primaries[index % Colors.primaries.length],
              );
            },
            childCount: 4,
          ),
          viewportFraction: 1.0,
        ),
        const SliverToBoxAdapter(
          child: Text('SliverFillRemaining'),
        ),
        SliverFillRemaining(
          child: Container(
            color: Colors.red,
            child: const Text('1123123'),
          ),
        ),
      ],
    );
  }
}

class MySliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
        color: Colors.blue,
        alignment: Alignment.center,
        child: const Text('我是一个SliverPersistentHeader',
            style: TextStyle(color: Colors.white)));
  }

  @override
  double get maxExtent => 200.0;

  @override
  double get minExtent => 100.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) =>
      false; // 如果内容需要更新，设置为true
}
