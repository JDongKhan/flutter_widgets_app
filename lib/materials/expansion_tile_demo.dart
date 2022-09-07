import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class ExpansionTileDemo extends StatefulWidget {
  const ExpansionTileDemo({Key? key}) : super(key: key);

  @override
  State<ExpansionTileDemo> createState() => _ExpansionTileDemoState();
}

class _ExpansionTileDemoState extends State<ExpansionTileDemo> {
  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(
      leading: Icon(Icons.home),
      subtitle: Text('各种学科'),
      backgroundColor: Colors.greenAccent,
      title: Text('学科'),
      children: <Widget>[
        Text('英语'),
        Text('数学'),
        Text('语文'),
      ],
    );
  }
}
