import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/utils/assets_path.dart';

///@Description TODO
///@Author jd
class NestedScrollViewDemo extends StatefulWidget {
  const NestedScrollViewDemo({Key? key}) : super(key: key);

  @override
  State<NestedScrollViewDemo> createState() => _NestedScrollViewDemoState();
}

class _NestedScrollViewDemoState extends State<NestedScrollViewDemo>
    with SingleTickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  TabController? _tabController;

  final PageStorageKey _newsKey = const PageStorageKey<int>(0);
  final PageStorageKey _sportKey = const PageStorageKey<int>(1);

  @override
  initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      controller: _scrollController,
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          const SliverAppBar(
            title: Text('Hello World'),
          ),
          SliverAppBar(
            expandedHeight: 230.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Hello World 2'),
              background: Image.asset(
                'meinv2.png'.toImg,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: StickyTabBarDelegate(
              child: TabBar(
                labelColor: Colors.black,
                controller: _tabController,
                tabs: const <Widget>[
                  Tab(text: '新闻'),
                  Tab(text: '体育'),
                ],
              ),
            ),
          ),
        ];
      },
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          RefreshIndicator(
            onRefresh: () async {
              print(('onRefresh'));
            },
            child: _buildList(_newsKey),
          ),
          _buildList(_sportKey),
        ],
      ),
    );
  }

  Widget _buildList(PageStorageKey key) {
    return ListView.builder(
      key: key,
      // controller: _scrollController,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 80,
          color: Colors.primaries[index % Colors.primaries.length],
          alignment: Alignment.center,
          child: Text(
            '$index',
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        );
      },
      itemCount: 20,
    );
  }
}

class StickyTabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar child;

  StickyTabBarDelegate({required this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: child,
    );
  }

  @override
  double get maxExtent => child.preferredSize.height;

  @override
  double get minExtent => child.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
