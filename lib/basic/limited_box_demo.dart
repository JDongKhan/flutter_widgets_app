import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class LimitedBoxDemo extends StatelessWidget {
  const LimitedBoxDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 100,
          color: Colors.red,
          child: LimitedBox(
            maxHeight: 50,
            maxWidth: 100,
            child: Container(
              color: Colors.blue,
            ),
          ),
        ),
        Container(
          height: 200,
          width: 400,
          color: Colors.grey,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.red,
              ),
            ],
          ),
        ),
        Container(
          height: 200,
          width: 400,
          color: Colors.black12,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              LimitedBox(
                maxWidth: 100,
                child: Container(
                  color: Colors.green,
                ),
              ),
              LimitedBox(
                maxWidth: 100,
                child: Container(
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
