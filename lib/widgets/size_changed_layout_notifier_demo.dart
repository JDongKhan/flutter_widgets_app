import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class SizeChangedLayoutNotifierDemo extends StatefulWidget {
  const SizeChangedLayoutNotifierDemo({Key? key}) : super(key: key);

  @override
  State<SizeChangedLayoutNotifierDemo> createState() =>
      _SizeChangedLayoutNotifierDemoState();
}

class _SizeChangedLayoutNotifierDemoState
    extends State<SizeChangedLayoutNotifierDemo> {
  double size = 100;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            setState(() {
              size += 10;
            });
          },
          child: const Text('点我'),
        ),
        NotificationListener(
          onNotification: (notification) {
            print('child:$notification');
            return false;
          },
          child: SizeChangedLayoutNotifier(
            child: Container(width: size, height: size, color: Colors.red),
          ),
        ),
      ],
    );
  }
}
