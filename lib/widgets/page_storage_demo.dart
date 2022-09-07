import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class PageStorageDemo extends StatefulWidget {
  const PageStorageDemo({Key? key}) : super(key: key);

  @override
  State<PageStorageDemo> createState() => _PageStorageDemoState();
}

class _PageStorageDemoState extends State<PageStorageDemo> {
  List<ScrollController>? _controllerList;
  final PageStorageBucket _pageStorageBucket = PageStorageBucket();
  final PageStorageKey _pageStorageKey =
      const PageStorageKey<String>("key_Page2");
  @override
  initState() {
    _controllerList = List.generate(2, (index) => ScrollController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          const TabBar(
            indicatorColor: Colors.blue,
            isScrollable: true, //多个按钮可以滑动
            tabs: <Widget>[
              Tab(text: "热门1"),
              Tab(text: "推荐2"),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                const Page1(key: PageStorageKey<String>("key_Page1")),
                PageStorage(
                  key: _pageStorageKey, //必须要有key
                  bucket: _pageStorageBucket,
                  child: Page2(
                    pageStorageBucket: _pageStorageBucket,
                    pageStorageKey: _pageStorageKey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//第一个页面
class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);
  @override
  State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  int page1Value = 1;
  @override
  Widget build(BuildContext context) {
    debugPrint('------page1---->重新Build---->');
    return Column(
      children: [
        Text('$page1Value'),
        TextButton(
          child: const Text("点我--->page1"),
          onPressed: () {
            _add();
          },
        )
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    debugPrint('------page1---->initState()');
  }

  //写这里和写initState()里面都差不多，只要在build(BuildContext context)里面的组件使用前赋值就行
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    page1Value = PageStorage.of(context)?.readState(context) ?? 1;
    debugPrint('------page1---->获取改变的内容---->$page1Value');
  }

  void _add() {
    page1Value++;
    setState(() {});
    PageStorage.of(context)?.writeState(context, page1Value);
  }
}

//第二个页面
class Page2 extends StatefulWidget {
  const Page2({
    Key? key,
    this.pageStorageKey,
    this.pageStorageBucket,
  }) : super(key: key);
  final PageStorageKey? pageStorageKey;
  final PageStorageBucket? pageStorageBucket;
  @override
  State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int page1Value = 1;

  @override
  void initState() {
    super.initState();
    print('------page2---->initState()');
    _updateContent();
  }

  _updateContent() {
    // var tempValue = _pageStorageBucket.readState(context);
    // 上下两句效果都一样，不写的话会去遍历整个组件树去寻找key。不过如果写的话，存值的key要和取值的key保持一致，
    var tempValue = widget.pageStorageBucket
        ?.readState(context, identifier: widget.pageStorageKey);
    if (null != tempValue) {
      page1Value = tempValue;
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('------page2---->didChangeDependencies()');
  }

  @override
  Widget build(BuildContext context) {
    print('------page2---->build');
    return Column(
      children: [
        Text('$page1Value'),
        TextButton(
          child: const Text("点我--->page2"),
          onPressed: () {
            _add();
          },
        )
      ],
    );
  }

  void _add() {
    page1Value++;
    setState(() {});
    //保存内容
    //这里注意context，存储和获取的Context要保持一个，一般来说也不会搞出两个来，为了防止一般情况下,提示下...
    widget.pageStorageBucket
        ?.writeState(context, page1Value, identifier: widget.pageStorageKey);
    // _pageStorageBucket.writeState(context, page1Value);
  }
}
