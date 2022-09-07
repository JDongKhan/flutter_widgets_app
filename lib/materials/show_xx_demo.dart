import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/utils/assets_path.dart';

///@Description TODO
///@Author jd
class ShowXXDemo extends StatelessWidget {
  const ShowXXDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            _showDialogDemo(context);
          },
          child: const Text('showDialog'),
        ),
        TextButton(
          onPressed: () {
            _showCupertinoDialogDemo(context);
          },
          child: const Text('showCupertinoDialog'),
        ),
        TextButton(
          onPressed: () {
            _showGeneralDialogDemo(context);
          },
          child: const Text('showGeneralDialog'),
        ),
        TextButton(
          onPressed: () {
            _showAboutDialogDemo(context);
          },
          child: const Text('showAboutDialog'),
        ),
        TextButton(
          onPressed: () {
            _showLicensePageDemo(context);
          },
          child: const Text('showLicensePage'),
        ),
        TextButton(
          onPressed: () {
            _showBottomSheetDemo(context);
          },
          child: const Text('showBottomSheet'),
        ),
        TextButton(
          onPressed: () {
            _showModalBottomSheetDemo(context);
          },
          child: const Text('showModalBottomSheet'),
        ),
        TextButton(
          onPressed: () {
            _showCupertinoModalPopupDemo(context);
          },
          child: const Text('showCupertinoModalPopup'),
        ),
        TextButton(
          onPressed: () {
            _showMenuDemo(context);
          },
          child: const Text('showMenu'),
        ),
        TextButton(
          onPressed: () {
            _showSearchDemo(context);
          },
          child: const Text('showSearch'),
        ),
      ],
    );
  }

  void _showDialogDemo(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('提示'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('取消'),
            ),
          ],
        );
      },
    );
  }

  void _showCupertinoDialogDemo(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('提示'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('取消'),
            ),
          ],
        );
      },
    );
  }

  void _showGeneralDialogDemo(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: '',
      transitionDuration: const Duration(milliseconds: 200),
      transitionBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) {
        return ScaleTransition(scale: animation, child: child);
      },
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return Center(
          child: Container(
            height: 300,
            width: 250,
            color: Colors.lightGreenAccent,
          ),
        );
      },
    );
  }

  void _showAboutDialogDemo(BuildContext context) {
    showAboutDialog(
      context: context,
      applicationIcon: Image.asset(
        'meinv2.png'.toImg,
        height: 100,
        width: 100,
      ),
      applicationName: '应用程序',
      applicationVersion: '1.0.0',
      applicationLegalese: 'copyright 这是一款不错的app',
      children: <Widget>[
        Container(
          height: 30,
          color: Colors.red,
        ),
        Container(
          height: 30,
          color: Colors.blue,
        ),
        Container(
          height: 30,
          color: Colors.green,
        )
      ],
    );
  }

  void _showLicensePageDemo(BuildContext context) {
    showLicensePage(
      context: context,
      applicationIcon: Image.asset(
        'meinv2.png'.toImg,
        height: 100,
        width: 100,
      ),
      applicationName: '应用程序',
      applicationVersion: '1.0.0',
      applicationLegalese: 'copyright 这是一款不错的app',
    );
  }

  void _showBottomSheetDemo(BuildContext context) {
    showBottomSheet(
      context: context,
      backgroundColor: Colors.black.withOpacity(0.5),
      builder: (context) {
        return Container(
          height: 200,
          color: Colors.lightBlue,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.close,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void _showModalBottomSheetDemo(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.lightBlue,
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      builder: (BuildContext context) {
        return BottomSheet(
          builder: (BuildContext context) {
            return SizedBox(
              width: 100,
              height: 200,
              child: Image.asset('meinv2.png'.toImg),
            );
          },
          onClosing: () {},
        );
      },
    );
  }

  void _showCupertinoModalPopupDemo(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return CupertinoActionSheet(
          title: const Text('提示'),
          message: const Text('是否要删除当前项？'),
          actions: <Widget>[
            CupertinoActionSheetAction(
              onPressed: () {},
              isDefaultAction: true,
              child: const Text('删除'),
            ),
            CupertinoActionSheetAction(
              onPressed: () {},
              isDestructiveAction: true,
              child: const Text('暂时不删'),
            ),
          ],
        );
      },
    );
  }

  void _showMenuDemo(BuildContext context) {
    showMenu(
      context: context,
      position: RelativeRect.fill,
      items: <PopupMenuEntry>[
        const PopupMenuItem(child: Text('语文')),
        const PopupMenuDivider(),
        const CheckedPopupMenuItem(
          checked: true,
          child: Text('数学'),
        ),
        const PopupMenuDivider(),
        const PopupMenuItem(child: Text('英语')),
      ],
    );
  }

  void _showSearchDemo(BuildContext context) {
    showSearch(context: context, delegate: CustomSearchDelegate());
  }
}

class CustomSearchDelegate extends SearchDelegate<String> {
  final List<int> list = List.generate(50, (index) => index);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(
          Icons.clear,
        ),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.arrow_back,
        color: Colors.blue,
      ),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Container(
          height: 60,
          alignment: Alignment.center,
          child: Text(
            '$index',
            style: const TextStyle(fontSize: 20),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemCount: 10,
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<int> newList =
        list.where((element) => '$element'.contains(query)).toList();
    return ListView.separated(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('${newList[index]}'),
          onTap: () {
            query = '${newList[index]}';
            showResults(context);
          },
        );
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemCount: newList.length,
    );
  }
}
