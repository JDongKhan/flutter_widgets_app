import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class OverflowBarDemo extends StatelessWidget {
  const OverflowBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Container(
        color: Colors.red,
        width: 400,
        child: Column(
          children: [
            OverflowBar(
              alignment: MainAxisAlignment.end, // 未溢出时 水平方向 对齐方式
              spacing: 20.0, // 未溢出时 水平方向 间距
              textDirection:
                  TextDirection.ltr, // 未溢出时 水平方向子组件的布局顺序(是从左往右还是从右往左)
              overflowSpacing: 20.0, // 溢出时 垂直方向 间距
              overflowAlignment: OverflowBarAlignment.center, // 溢出时 垂直方向 对齐方式
              overflowDirection:
                  VerticalDirection.down, // 溢出时 垂直方向子组件的布局顺序(是从上往下还是从右下往上)
              clipBehavior: Clip.hardEdge, // 超出时 裁剪方式
              // 子组件
              children: [
                ElevatedButton(
                    onPressed: () {}, child: const Text("1XXXXXXXXXXX1")),
                ElevatedButton(
                    onPressed: () {}, child: const Text("1YYYYYYYYYYY1")),
              ],
            ),
            OverflowBar(
              alignment: MainAxisAlignment.spaceAround, // 未溢出时 水平方向 对齐方式
              spacing: 20.0, // 未溢出时 水平方向 间距
              textDirection:
                  TextDirection.rtl, // 未溢出时 水平方向子组件的布局顺序(是从左往右还是从右往左)
              overflowSpacing: 20.0, // 溢出时 垂直方向 间距
              overflowAlignment: OverflowBarAlignment.center, // 溢出时 垂直方向 对齐方式
              overflowDirection:
                  VerticalDirection.down, // 溢出时 垂直方向子组件的布局顺序(是从上往下还是从右下往上)
              clipBehavior: Clip.hardEdge, // 超出时 裁剪方式
              // 子组件
              children: [
                ElevatedButton(
                    onPressed: () {}, child: const Text("2XXXXXXXXXXX2")),
                ElevatedButton(
                    onPressed: () {}, child: const Text("2YYYYYYYYYYY2")),
              ],
            ),
            OverflowBar(
              alignment: MainAxisAlignment.end, // 未溢出时 水平方向 对齐方式
              spacing: 20.0, // 未溢出时 水平方向 间距
              textDirection:
                  TextDirection.ltr, // 未溢出时 水平方向子组件的布局顺序(是从左往右还是从右往左)
              overflowSpacing: 10.0, // 溢出时 垂直方向 间距
              overflowAlignment: OverflowBarAlignment.center, // 溢出时 垂直方向 对齐方式
              overflowDirection:
                  VerticalDirection.down, // 溢出时 垂直方向子组件的布局顺序(是从上往下还是从右下往上)
              clipBehavior: Clip.none, // 超出时 裁剪方式
              // 子组件
              children: [
                ElevatedButton(
                    onPressed: () {}, child: const Text("3XXXXXXXXXXX3")),
                ElevatedButton(
                    onPressed: () {}, child: const Text("3YYYYYYYYYYY3")),
                ElevatedButton(
                    onPressed: () {}, child: const Text("3ZZZZZZZZZZZ3")),
              ],
            ),
            OverflowBar(
              alignment: MainAxisAlignment.end, // 未溢出时 水平方向 对齐方式
              spacing: 20.0, // 未溢出时 水平方向 间距
              textDirection:
                  TextDirection.ltr, // 未溢出时 水平方向子组件的布局顺序(是从左往右还是从右往左)
              overflowSpacing: 10.0, // 溢出时 垂直方向 间距
              overflowAlignment: OverflowBarAlignment.end, // 溢出时 垂直方向 对齐方式
              overflowDirection:
                  VerticalDirection.up, // 溢出时 垂直方向子组件的布局顺序(是从上往下还是从右下往上)
              clipBehavior: Clip.none, // 超出时 裁剪方式
              // 子组件
              children: [
                ElevatedButton(
                    onPressed: () {}, child: const Text("4XXXXXXXXXXX4")),
                ElevatedButton(
                    onPressed: () {}, child: const Text("4YYYYYYYYYYY4")),
                ElevatedButton(
                    onPressed: () {}, child: const Text("4ZZZZZZZZZZZ4")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
