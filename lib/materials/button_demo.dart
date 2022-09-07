import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: const <Widget>[
          Spacer(),
          ButtonTypesGroup(enabled: true),
          ButtonTypesGroup(enabled: false),
          Spacer(),
        ],
      ),
    );
  }
}

class ButtonTypesGroup extends StatefulWidget {
  const ButtonTypesGroup({Key? key, required this.enabled}) : super(key: key);

  final bool enabled;

  @override
  State<ButtonTypesGroup> createState() => _ButtonTypesGroupState();
}

class _ButtonTypesGroupState extends State<ButtonTypesGroup> {
  var _dropValue = '语文';
  @override
  Widget build(BuildContext context) {
    final VoidCallback? onPressed = widget.enabled ? () {} : null;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ElevatedButton(
              onPressed: onPressed,
              child: const Text('ElevatedButton Elevated')),

          // Use an ElevatedButton with specific style to implement the
          // 'Filled' type.
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              // Foreground color
              onPrimary: Theme.of(context).colorScheme.onPrimary,
              // Background color
              primary: Theme.of(context).colorScheme.primary,
            ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
            onPressed: onPressed,
            child: const Text('ElevatedButton Filled'),
          ),

          // Use an ElevatedButton with specific style to implement the
          // 'Filled Tonal' type.
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              // Foreground color
              onPrimary: Theme.of(context).colorScheme.onSecondaryContainer,
              // Background color
              primary: Theme.of(context).colorScheme.secondaryContainer,
            ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
            onPressed: onPressed,
            child: const Text('ElevatedButton Filled Tonal'),
          ),

          MaterialButton(
            onPressed: onPressed,
            child: const Text('MaterialButton'),
          ),

          RawMaterialButton(
            onPressed: onPressed,
            fillColor: Colors.blue,
            child: const Text('RawMaterialButton'),
          ),
          OutlinedButton(
            onPressed: onPressed,
            child: const Text('OutlinedButton'),
          ),

          IconButton(
            icon: const Icon(Icons.person),
            iconSize: 30,
            color: Colors.red,
            onPressed: onPressed,
          ),
          BackButton(
            onPressed: onPressed,
          ),
          CloseButton(
            onPressed: onPressed,
          ),
          CupertinoButton(
            onPressed: onPressed,
            child: const Text('CupertinoButton'),
          ),
          PopupMenuButton<String>(
            itemBuilder: (context) {
              return <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: '语文',
                  child: Text('语文'),
                ),
                const PopupMenuItem<String>(
                  value: '数学',
                  child: Text('数学'),
                ),
                const PopupMenuItem<String>(
                  value: '英语',
                  child: Text('英语'),
                ),
                const PopupMenuItem<String>(
                  value: '生物',
                  child: Text('生物'),
                ),
                const PopupMenuItem<String>(
                  value: '化学',
                  child: Text('化学'),
                ),
              ];
            },
          ),

          DropdownButton(
            value: _dropValue,
            items: const [
              DropdownMenuItem(
                value: '语文',
                child: Text('语文'),
              ),
              DropdownMenuItem(value: '数学', child: Text('数学')),
              DropdownMenuItem(value: '英语', child: Text('英语')),
            ],
            onChanged: (value) {
              setState(() {
                _dropValue = value.toString();
              });
            },
          ),

          TextButton(
            onPressed: onPressed,
            child: const Text('TextButton'),
          ),

          TextButton(
            onPressed: onPressed,
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
              primary: Colors.white,
            ),
            child: const Text('TextButton'),
          ),
        ],
      ),
    );
  }
}
