import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class DrawerDemo extends StatefulWidget {
  const DrawerDemo({Key? key}) : super(key: key);

  @override
  State<DrawerDemo> createState() => _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  final List<Map<String, dynamic>> _menu_list = [
    {'icon': Icons.add, 'title': '开通会员'},
    {'icon': Icons.favorite, 'title': '我的收藏'},
    {
      'icon': Icons.view_quilt,
      'title': '我的二维码',
      'click': () {},
    },
    {'icon': Icons.feedback, 'title': '意见反馈'},
    {'icon': Icons.account_box, 'title': '关于我们'},
    {'icon': Icons.verified_user, 'title': '版本信息'}
  ];

  Color _color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: MediaQuery.removePadding(
          context: context,
          //移除抽屉菜单顶部默认留白
          removeTop: true,
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: _color),
                duration: const Duration(seconds: 1),
                child: Row(
                  children: <Widget>[
                    const CircleAvatar(
                      child: Text('王'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ActionChip(
                      label: const Text('老王'),
                      onPressed: () {
                        setState(() {
                          _color = Colors.red.withOpacity(.5);
                        });
                      },
                    )
                  ],
                ),
              ),
              ..._buildMenuList(),
            ],
          ),
        ),
      ),
      endDrawer: const Drawer(),
    );
  }

  List<Widget> _buildMenuList() {
    return _menu_list
        .map((e) => ListTile(
              leading: Icon(
                e['icon'] as IconData,
                color: Colors.white,
              ),
              title: Text(
                e['title'].toString(),
                style: const TextStyle(color: Colors.white),
              ),
              onTap: () {
                Function? f = e['click'];
                f?.call();
              },
            ))
        .toList();
  }
}
