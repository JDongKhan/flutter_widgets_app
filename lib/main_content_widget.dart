import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_widgets_app/controller/article_controller.dart';
import 'package:flutter_widgets_app/routes.dart';
import 'package:flutter_widgets_app/utils/assets_path.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

///@Description TODO
///@Author jd
class MainContentWidget extends StatefulWidget {
  const MainContentWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<MainContentWidget> createState() => _MainContentWidgetState();
}

class _MainContentWidgetState extends State<MainContentWidget> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return _buildBody(constraints);
    });
  }

  Widget _buildBody(BoxConstraints constraints) {
    double maxHeight = constraints.maxHeight - 2;
    ArticleController controller = context.watch<ArticleController>();
    if (controller.title?.isEmpty ?? true) {
      return Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
      );
    }
    List<Widget> children = [];
    DemoWidgetBuilder? builder = routes[controller.title!];
    Widget? widget = builder?.call(context);

    if (widget != null) {
      children.add(Container(
        width: double.infinity,
        constraints: BoxConstraints(maxHeight: maxHeight),
        color: Colors.greenAccent,
        child: widget,
      ));
    }

    return Container(
      margin: const EdgeInsets.only(top: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ...children,
          if (controller.url != null)
            Expanded(
              child: FutureBuilder(
                  key: UniqueKey(),
                  future: controller.url!.toAssets.isExist(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    print('${snapshot.data}');
                    if (snapshot.data == null || snapshot.data == false) {
                      return const SizedBox.shrink();
                    }
                    return FutureBuilder(
                      future: rootBundle
                          .loadString(controller.url!.toAssets)
                          .catchError((onError) => ''),
                      builder: (BuildContext context,
                              AsyncSnapshot<String> snapshot) =>
                          Markdown(
                        selectable: true,
                        controller: _scrollController,
                        data: snapshot.data ?? '',
                        // onTapText: () {
                        //   SmartDialog.showToast('拷贝成功');
                        //   Clipboard.setData(ClipboardData(text: snapshot.data ?? ''));
                        // },
                        onTapLink: (String text, String? href, String title) {
                          openUrl(href);
                        },
                      ),
                    );
                  }),
            ),
        ],
      ),
    );
  }

  void openUrl(String? uri) async {
    if (uri == null) {
    } else if (uri.startsWith('http')) {
      launchUrl(Uri.parse(uri));
    } else {
      DemoWidgetBuilder? builder = clickRoute[uri];
      builder?.call(context);
    }
  }
}
