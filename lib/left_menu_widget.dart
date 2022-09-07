import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:flutter_widgets_app/controller/article_controller.dart';
import 'package:flutter_widgets_app/utils/encrypt_utils.dart';
import 'package:flutter_widgets_app/utils/screen_utils.dart';
import 'package:provider/provider.dart';

///@Description TODO
///@Author jd
///
class LeftMenuWidget extends StatefulWidget {
  const LeftMenuWidget({
    Key? key,
  }) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _LeftMenuWidgetState createState() => _LeftMenuWidgetState();
}

class _LeftMenuWidgetState extends State<LeftMenuWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ArticleController controller = context.watch<ArticleController>();
    List? list = controller.selectedWidgets;

    if (ScreenUtils.isMobile(context)) {
      return Container(
        height: 40,
        margin: const EdgeInsets.only(bottom: 2),
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
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          controller: ScrollController(),
          itemBuilder: (BuildContext context, int index) {
            Map map = list![index];
            String title = map['title'];
            return GestureDetector(
              onTap: () {
                context.read<ArticleController>().openUrl(title);
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 10),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    color: controller.title == title
                        ? Colors.green
                        : Colors.black87,
                  ),
                ),
              ),
            );
          },
          itemCount: list?.length ?? 0,
        ),
      );
    }

    return Container(
      width: 250,
      margin: const EdgeInsets.only(top: 2),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[100]!,
            offset: const Offset(5, 0),
            blurRadius: 3,
          ),
        ],
      ),
      child: ListView.builder(
        controller: ScrollController(),
        itemBuilder: (BuildContext context, int index) {
          Map map = list![index];
          String title = map['title'];
          return GestureDetector(
            onTap: () {
              context.read<ArticleController>().openUrl(title);
            },
            onLongPress: () {
              SmartDialog.showToast('拷贝成功');
              Clipboard.setData(ClipboardData(text: title));
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    color: controller.title == title
                        ? Colors.green
                        : Colors.black87,
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: list?.length ?? 0,
      ),
    );
  }

  void _encrypt() async {
    String content = 'test3';
    String key = 'ec1d145a-44da-16f9-4a53-cb1b383b134d';
    String? encryped = await EncryptUtils.AES128Encrypt(content, key);
    print('原生密文:$encryped');

    String? encryped1 = EncryptUtils.AESEncrypt(content, key);
    print('flutter密文:$encryped1');
  }
}
