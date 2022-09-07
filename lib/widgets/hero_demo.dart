import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/utils/assets_path.dart';

///@Description TODO
///@Author jd
class HeroDemo extends StatefulWidget {
  const HeroDemo({Key? key}) : super(key: key);

  @override
  State<HeroDemo> createState() => _HeroDemoState();
}

class _HeroDemoState extends State<HeroDemo> {
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 400,
      child: GridView(
        controller: scrollController,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 3),
        children: List.generate(10, (index) {
          if (index == 1) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => _Hero1Demo(),
                  ),
                );
              },
              child: Hero(
                tag: 'hero',
                child: Image.asset(
                  'meinv2.png'.toImg,
                  fit: BoxFit.fitWidth,
                ),
              ),
            );
          }
          return Container(
            color: Colors.red,
          );
        }),
      ),
    );
  }
}

class _Hero1Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          alignment: Alignment.topCenter,
          child: Hero(
            tag: 'hero',
            child: Image.asset(
              'meinv2.png'.toImg,
            ),
          )),
    );
  }
}
