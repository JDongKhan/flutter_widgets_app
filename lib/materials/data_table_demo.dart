import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class DataTableDemo extends StatefulWidget {
  const DataTableDemo({Key? key}) : super(key: key);

  @override
  State<DataTableDemo> createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  var _sortAscending = true;
  List<User> data = [
    User('王', 8),
    User('王1', 9, selected: true),
    User('王2', 11),
    User('王3', 11),
    User('王4', 21),
  ];

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<DataRow> dateRows = [];
    for (int i = 0; i < data.length; i++) {
      dateRows.add(DataRow(
        selected: data[i].selected,
        onSelectChanged: (selected) {
          setState(() {
            data[i].selected = selected!;
          });
        },
        cells: [
          DataCell(Text(data[i].name), showEditIcon: true),
          DataCell(Text('${data[i].age}')),
        ],
      ));
    }
    return DataTable(
      sortColumnIndex: 1,
      sortAscending: _sortAscending,
      columns: [
        const DataColumn(label: Text('姓名')),
        DataColumn(
            label: const Text('年龄'),
            numeric: true,
            tooltip: '年龄',
            onSort: (int columnIndex, bool ascending) {
              print('ascending:$ascending,columnIndex:$columnIndex ');
              //排序算法
              setState(() {
                _sortAscending = ascending;
                if (ascending) {
                  data.sort((a, b) => a.age.compareTo(b.age));
                } else {
                  data.sort((a, b) => b.age.compareTo(a.age));
                }
              });
            }),
      ],
      rows: dateRows,
    );
  }
}

class User {
  User(this.name, this.age, {this.selected = false});

  String name;
  int age;
  bool selected;
}
