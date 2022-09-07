import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class CompositedTransformTargetDemo extends StatefulWidget {
  const CompositedTransformTargetDemo({Key? key}) : super(key: key);

  @override
  State<CompositedTransformTargetDemo> createState() =>
      _CompositedTransformTargetDemoState();
}

class _CompositedTransformTargetDemoState
    extends State<CompositedTransformTargetDemo> {
  final LayerLink _layerLink = LayerLink();

  OverlayEntry? _overlayEntry;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //1 Flutter Logo
          child: CompositedTransformTarget(
            link: _layerLink,
            child: GestureDetector(
              onTap: () {
                /// 2点击展示Overlay
                showOverlay(context);
              },
              child: const FlutterLogo(
                size: 100,
              ),
            ),
          ),
        ),
      ],
    );
  }

  ///创建展示OverLay
  void showOverlay(BuildContext context) {
    if (_overlayEntry != null) {
      _overlayEntry?.remove();
      _overlayEntry = null;
      return;
    }
    OverlayState? overlayState = Overlay.of(context);
    _overlayEntry = OverlayEntry(builder: (ctx) {
      ///使用CompositedTransformFollwer,在Target右边展示浮层。
      return CompositedTransformFollower(
        link: _layerLink,
        targetAnchor: Alignment.centerRight,
        // followerAnchor: Alignment.bottomLeft,
        child: GestureDetector(
            onTap: () {
              if (_overlayEntry != null) {
                _overlayEntry?.remove();
                _overlayEntry = null;
                return;
              }
            },
            child: const Text(
              "Hello Flutter Logo.",
              style: TextStyle(fontSize: 16, color: Colors.redAccent),
            )),
      );
    });
    _overlayEntry?.addListener(() {
      print("-----${_overlayEntry}");
      // dismiss();
    });
    overlayState?.insert(_overlayEntry!);
  }

  dismiss() {
    if (_overlayEntry != null) {
      _overlayEntry?.remove();
      _overlayEntry = null;
      return;
    }
  }
}
