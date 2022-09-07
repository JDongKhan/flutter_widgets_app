import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class ReorderableListDemo extends StatefulWidget {
  const ReorderableListDemo({Key? key}) : super(key: key);

  @override
  State<ReorderableListDemo> createState() => _ReorderableListDemoState();
}

class _ReorderableListDemoState extends State<ReorderableListDemo> {
  final List<String> _backingList = List.generate(100, (index) => '$index');

  void handleReorder(int oldIndex, int newIndex) {
    if (oldIndex < newIndex) {
      // removing the item at oldIndex will shorten the list by 1.
      newIndex -= 1;
    }
    final String element = _backingList.removeAt(oldIndex);
    _backingList.insert(newIndex, element);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ReorderableList(
            controller: ScrollController(),
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                key: ValueKey(index),
                title: Text(_backingList[index]),
              );
            },
            itemCount: _backingList.length,
            onReorder: handleReorder,
          ),
        ),
        Expanded(
          child: ReorderableListView(
            scrollController: ScrollController(),
            onReorder: handleReorder,
            children: _backingList
                .map(
                  (e) => ListTile(
                    key: ValueKey(e),
                    title: Text(e),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
