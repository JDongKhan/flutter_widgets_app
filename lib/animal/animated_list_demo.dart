import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class AnimatedListDemo extends StatefulWidget {
  const AnimatedListDemo({Key? key}) : super(key: key);

  @override
  State<AnimatedListDemo> createState() => _AnimatedListDemoState();
}

class _AnimatedListDemoState extends State<AnimatedListDemo>
    with SingleTickerProviderStateMixin {
  final List<int> _list = [];
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  void _addItem() {
    final int index = _list.length;
    _list.insert(index, index);
    _listKey.currentState?.insertItem(index);
  }

  void _removeItem() {
    final int index = _list.length - 1;
    var item = _list[index].toString();
    _listKey.currentState?.removeItem(
        index, (context, animation) => _buildItem(item, animation));
    _list.removeAt(index);
  }

  Widget _buildItem(String item, Animation animation) {
    return SlideTransition(
      position: animation.drive(CurveTween(curve: Curves.easeIn)).drive(
          Tween<Offset>(begin: const Offset(1, 1), end: const Offset(0, 1))),
      child: Card(
        child: ListTile(
          title: Text(
            item,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedList(
        key: _listKey,
        initialItemCount: _list.length,
        itemBuilder: (BuildContext context, int index, Animation animation) {
          return _buildItem(_list[index].toString(), animation);
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () => _addItem(),
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 60,
          ),
          FloatingActionButton(
            onPressed: () => _removeItem(),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
