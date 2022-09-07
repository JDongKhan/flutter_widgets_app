import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class ExpansionPanelListDemo extends StatefulWidget {
  const ExpansionPanelListDemo({Key? key}) : super(key: key);

  @override
  State<ExpansionPanelListDemo> createState() => _ExpansionPanelListDemoState();
}

class _ExpansionPanelListDemoState extends State<ExpansionPanelListDemo> {
  List<bool> dataList = List.generate(20, (index) => false).toList();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: ExpansionPanelList(
        expansionCallback: (index, isExpanded) {
          setState(() {
            dataList[index] = !isExpanded;
          });
        },
        children: dataList.map((value) {
          return ExpansionPanel(
            isExpanded: value,
            headerBuilder: (context, isExpanded) {
              return const ListTile(
                title: Text('老王'),
              );
            },
            body: Container(
              height: 100,
              color: Colors.red,
            ),
          );
        }).toList(),
      ),
    );
  }
}
