import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class GridTileDemo extends StatelessWidget {
  const GridTileDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      controller: ScrollController(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (context, index) {
        return GridTile(
          header: const GridTileBar(
            title: Text('Header'),
          ),
          footer: const GridTileBar(
            title: Text('Footer'),
          ),
          child: Container(
            height: 80,
            color: Colors.primaries[index % Colors.primaries.length],
          ),
        );
      },
      itemCount: 50,
    );
  }
}
