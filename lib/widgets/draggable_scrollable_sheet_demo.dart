import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/utils/assets_path.dart';

///@Description TODO
///@Author jd
class DraggableScrollableSheetDemo extends StatelessWidget {
  const DraggableScrollableSheetDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(child: Image.asset('meinv2.png'.toImg)),
              Container(
                height: 200,
                color: Colors.red,
                alignment: Alignment.center,
                child: const Text('电影介绍'),
              ),
            ],
          ),
          Positioned.fill(
              child: DraggableScrollableSheet(
                  expand: false,
                  initialChildSize: 0.4,
                  minChildSize: 0.4,
                  maxChildSize: 1,
                  builder: (BuildContext context,
                      ScrollController scrollController) {
                    return Container(
                      color: Colors.blue[100],
                      child: ListView.builder(
                        controller: scrollController,
                        itemCount: 100,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(title: Text('评论 $index'));
                        },
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
