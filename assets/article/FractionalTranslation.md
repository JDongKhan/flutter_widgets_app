## FractionalTranslation

根据Offset平移控件，比如设置Offset的dx为0.25，那么在水平方向上平移控件1/4的宽度。

### 代码

 ```dart

Container(
    height: 200,
    width: 200,
    color: Colors.blue,
    child: FractionalTranslation(
        translation: const Offset(0.25, .2),
        child: Container(
            color: Colors.red,
        ),
    ),
)

 ```