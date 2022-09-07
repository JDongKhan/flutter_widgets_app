import 'package:flutter/material.dart';

///@Description TODO
///@Author jd

class ListBodyDemo extends StatelessWidget {
  const ListBodyDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListBody(
        mainAxis: Axis.vertical,
        reverse: false,
        children: <Widget>[
          Container(
            height: 45,
            color: Colors.primaries[0],
          ),
          Container(
            height: 45,
            color: Colors.primaries[1],
          ),
          Container(
            height: 45,
            color: Colors.primaries[2],
          ),
        ],
      ),
    );
  }
}
