import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/utils/assets_path.dart';

///@Description TODO
///@Author jd
class InkDemo extends StatelessWidget {
  const InkDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.teal[900],
      child: Column(
        children: [
          InkWell(
            splashColor: Colors.red,
            highlightColor: Colors.blue,
            onTap: () {},
            child: const Text('这是InkWell点击效果'),
          ),
          Ink(
            color: Colors.yellow,
            width: 200.0,
            height: 100.0,
            child: InkWell(
                onTap: () {/* ... */},
                child: const Center(
                  child: Text('YELLOW'),
                )),
          ),
          Ink.image(
            image: AssetImage('meinv2.png'.toImg),
            fit: BoxFit.cover,
            width: 300.0,
            height: 200.0,
            child: InkWell(
                onTap: () {/* ... */},
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'KITTEN',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )),
          ),
          Ink(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFFDE2F21), Color(0xFFEC592F)]),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: InkWell(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: const Text(
                  '这是InkWell的点击效果',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
