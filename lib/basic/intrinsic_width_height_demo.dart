import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class IntrinsicWidthHeightDemo extends StatelessWidget {
  const IntrinsicWidthHeightDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //第一行
          Container(
            constraints: const BoxConstraints(maxHeight: 150),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(color: Colors.blue, width: 100.0),
                Container(
                  color: Colors.red,
                  width: 50.0,
                  height: 50.0,
                ),
                Container(color: Colors.yellow, width: 150.0),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(color: Colors.blue, width: 100.0),
                Container(
                  color: Colors.red,
                  width: 50.0,
                  height: 50.0,
                ),
                Container(color: Colors.yellow, width: 150.0),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(),
          const Text('IntrinsicWidth'),
          const Text('''
          IntrinsicWidth和IntrinsicHeight一样，不过多了2个参数，stepHeight以及stepWidth：
          当stepWidth不是null的时候，child的宽度将会是stepWidth的倍数，当stepWidth值比child最小宽度小的时候，这个值不起作用；
          当stepWidth为null的时候，child的宽度是child的最小宽度；
          当stepHeight不为null的时候，效果跟stepWidth相同；
          当stepHeight为null的时候，高度取最大高度。
          '''),
          //第二行
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  const Text('stepWidth == null && stepHeight == null '),
                  const SizedBox(height: 10),
                  IntrinsicWidth(
                    child: Column(
                      children: <Widget>[
                        Container(color: Colors.blue, height: 100.0),
                        Container(
                            color: Colors.red, width: 150.0, height: 100.0),
                        Container(
                          color: Colors.yellow,
                          height: 150.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  const Text('stepWidth == 300 && stepHeight == 450 '),
                  const SizedBox(height: 10),
                  IntrinsicWidth(
                    stepWidth: 300.0,
                    stepHeight: 450.0,
                    child: Column(
                      children: <Widget>[
                        Container(color: Colors.blue, height: 100.0),
                        Container(
                            color: Colors.red, width: 150.0, height: 100.0),
                        Container(
                          color: Colors.yellow,
                          height: 150.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  const Text('stepWidth == 300 && stepHeight == null '),
                  const SizedBox(height: 10),
                  IntrinsicWidth(
                    stepWidth: 300.0,
                    stepHeight: null,
                    child: Column(
                      children: <Widget>[
                        Container(color: Colors.blue, height: 100.0),
                        Container(
                            color: Colors.red, width: 150.0, height: 100.0),
                        Container(
                          color: Colors.yellow,
                          height: 150.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  const Text('stepWidth == null && stepHeight == 450 '),
                  const SizedBox(height: 10),
                  IntrinsicWidth(
                    stepWidth: null,
                    stepHeight: 450,
                    child: Column(
                      children: <Widget>[
                        Container(color: Colors.blue, height: 100.0),
                        Container(
                            color: Colors.red, width: 150.0, height: 100.0),
                        Container(
                          color: Colors.yellow,
                          height: 150.0,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
