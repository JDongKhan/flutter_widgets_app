import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class NavigationToolbarDemo extends StatelessWidget {
  const NavigationToolbarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.blue,
          height: 60,
          child: NavigationToolbar(
            leading: IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {},
            ),
            middle: IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {},
            ),
            trailing: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {},
            ),
          ),
        ),
        Container(
          color: Colors.red,
          height: 80,
          child: NavigationToolbar(
            centerMiddle: false,
            leading: IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {},
            ),
            middle: IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {},
            ),
            trailing: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {},
            ),
          ),
        ),
        Container(
          color: Colors.green,
          height: 60,
          child: NavigationToolbar(
            centerMiddle: false,
            middleSpacing: 30,
            leading: IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {},
            ),
            middle: IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {},
            ),
            trailing: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {},
            ),
          ),
        )
      ],
    );
  }
}
