## AnimatedSwitcher


### 代码

 ```dart

var _currChild = Container(
  key: ValueKey("1"),
  height: 300,
  width: 300,
  color: Colors.red,
);

AnimatedSwitcher(
  duration: Duration(seconds: 1),
  child: _currChild,
)

RaisedButton(
  onPressed: () {
      setState(() {
        _currChild = Container(
           key: ValueKey("2"),
           height: 100,
           width: 100,
           color: Colors.blue,
        );
     });
  },
),

 ```