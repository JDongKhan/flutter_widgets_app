## AnimatedList


### 代码

 ```dart

final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
AnimatedList(
    key: _listKey,
    initialItemCount: _list.length,
    itemBuilder: (BuildContext context, int index, Animation animation) {
        return _buildItem(_list[index].toString(), animation);
    },
)

_listKey.currentState.insertItem(_index);

 ```

