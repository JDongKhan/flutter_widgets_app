import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class TableDemo extends StatefulWidget {
  const TableDemo({Key? key}) : super(key: key);

  @override
  State<TableDemo> createState() => _TableDemoState();
}

class _TableDemoState extends State<TableDemo> {
  @override
  Widget build(BuildContext context) {
    return Table(
      defaultColumnWidth: const FixedColumnWidth(100),
      border: const TableBorder(
        top: BorderSide(color: Colors.red),
        left: BorderSide(color: Colors.red),
        right: BorderSide(color: Colors.red),
        bottom: BorderSide(color: Colors.red),
        horizontalInside: BorderSide(color: Colors.red),
        verticalInside: BorderSide(color: Colors.green),
      ),
      children: const [
        TableRow(children: [
          TableCell(child: Text('姓名')),
          TableCell(child: Text('性别')),
          TableCell(child: Text('年龄')),
        ]),
        TableRow(children: [
          TableCell(child: Text('小刚')),
          TableCell(child: Text('男')),
          TableCell(child: Text('18')),
        ]),
        TableRow(children: [
          TableCell(child: Text('小红')),
          TableCell(child: Text('女')),
          TableCell(child: Text('18')),
        ]),
      ],
    );
  }
}
