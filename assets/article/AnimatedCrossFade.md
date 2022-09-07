## AnimatedCrossFade


### 代码

 ```dart

 AnimatedCrossFade(
   duration: const Duration(seconds: 3),
   firstChild: const FlutterLogo(style: FlutterLogoStyle.horizontal, size: 100.0),
   secondChild: const FlutterLogo(style: FlutterLogoStyle.stacked, size: 100.0),
   crossFadeState: _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
 )

 ```