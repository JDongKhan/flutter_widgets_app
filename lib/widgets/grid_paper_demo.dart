import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class GridPaperDemo extends StatelessWidget {
  const GridPaperDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 300,
      height: 200,
      child: GridPaper(
        color: Colors.red,
        divisions: 1,
        subdivisions: 1,
      ),
    );
  }
}
