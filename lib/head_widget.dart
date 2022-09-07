import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/controller/article_controller.dart';
import 'package:provider/provider.dart';

///@Description TODO
///@Author jd
class HeadWidget extends StatelessWidget {
  const HeadWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ArticleController controller = context.watch<ArticleController>();
    List<Widget>? children = controller.widgetInfo?.keys.map((e) {
      return TextButton(
        onPressed: () {
          controller.select(e.toString());
        },
        child: Text(
          e.toString(),
          style: TextStyle(
            fontSize: 16,
            color: controller.selectTitle == e ? Colors.blue : Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    }).toList();

    return SafeArea(
      bottom: false,
      child: Container(
        height: 60,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey[100]!,
              offset: const Offset(0, 5),
              blurRadius: 3,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  Text(
                    'Flutter',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [if (children != null) ...children],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
