import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class AnimatedIconsDemo extends StatefulWidget {
  const AnimatedIconsDemo({Key? key}) : super(key: key);

  @override
  State<AnimatedIconsDemo> createState() => _AnimatedIconsDemoState();
}

class _AnimatedIconsDemoState extends State<AnimatedIconsDemo>
    with TickerProviderStateMixin {
  AnimationController? animationController;
  final List<AnimatedIconData> _list = [
    AnimatedIcons.add_event,
    AnimatedIcons.arrow_menu,
    AnimatedIcons.close_menu,
    AnimatedIcons.ellipsis_search,
    AnimatedIcons.event_add,
    AnimatedIcons.home_menu,
    AnimatedIcons.list_view,
    AnimatedIcons.menu_arrow,
    AnimatedIcons.menu_close,
    AnimatedIcons.menu_home,
    AnimatedIcons.pause_play,
    AnimatedIcons.play_pause,
    AnimatedIcons.search_ellipsis,
    AnimatedIcons.view_list,
  ];

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: const Duration(seconds: 1), vsync: this)
          ..addStatusListener((AnimationStatus status) {
            if (status == AnimationStatus.completed) {
              animationController?.reverse();
            } else if (status == AnimationStatus.dismissed) {
              animationController?.forward();
            }
          });
    animationController?.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 50, right: 50),
      // color: Colors.green,
      child: GridView.builder(
        shrinkWrap: true,
        controller: ScrollController(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 100,
        ),
        itemBuilder: (c, idx) {
          return AnimatedIcon(
            icon: _list[idx],
            progress: animationController!,
            semanticLabel: 'Show menu',
          );
        },
        itemCount: _list.length,
      ),
    );
  }

  @override
  dispose() {
    animationController?.dispose();
    super.dispose();
  }
}
