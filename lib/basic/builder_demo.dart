import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class BuilderDemo extends StatelessWidget {
  const BuilderDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NotificationListener<CustomNotification>(
          onNotification: (CustomNotification notification) {
            print('介绍事件——1：${notification.message}');
            return false;
          },
          child: Center(
            child: TextButton(
              child: const Text('发送'),
              onPressed: () {
                CustomNotification('我的事件1').dispatch(context);
              },
            ),
          ),
        ),
        NotificationListener<CustomNotification>(
          onNotification: (CustomNotification notification) {
            print('介绍事件——2：${notification.message}');
            return false;
          },
          child: Center(
            child: Builder(
              builder: (context) {
                return TextButton(
                  child: const Text('发送'),
                  onPressed: () {
                    CustomNotification('我的事件2').dispatch(context);
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class CustomNotification extends Notification {
  CustomNotification(this.message);
  final String message;
}
