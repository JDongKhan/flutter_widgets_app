## AboutDialog

AboutDialog用于描述当前App信息，底部提供2个按钮：查看许可按钮和关闭按钮。AboutDialog需要和showAboutDialog配合使用，用法如下：

### 代码

 ```dart

showAboutDialog(
  context: context,
  applicationIcon: Image.asset(
    'images/bird.png',
    height: 100,
    width: 100,
  ),
  applicationName: '应用程序',
  applicationVersion: '1.0.0',
  applicationLegalese: 'My App content',
  children: <Widget>[
    Container(
      height: 30,
      color: Colors.red,
    ),
    Container(
      height: 30,
      color: Colors.blue,
    ),
    Container(
      height: 30,
      color: Colors.green,
    )
  ],
);

 ```
[demo](AboutDialog)