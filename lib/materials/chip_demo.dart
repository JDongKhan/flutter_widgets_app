import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class ChipDemo extends StatefulWidget {
  const ChipDemo({Key? key}) : super(key: key);

  @override
  State<ChipDemo> createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  bool _selected = false;
  int _selectIndex = 0;
  List<String> _filters = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('RawChip'),
        Wrap(
          children: [
            const RawChip(
              label: Text('小王'),
            ),
            const RawChip(
              label: Text('小王'),
              isEnabled: false,
            ),
            const RawChip(
              avatar: CircleAvatar(
                child: Text('王'),
              ),
              label: Text('小王'),
            ),
            const RawChip(
              label: Text('小王'),
              labelStyle: TextStyle(color: Colors.blue),
              labelPadding: EdgeInsets.symmetric(horizontal: 10),
            ),
            RawChip(
              label: const Text('小王'),
              onDeleted: () {
                print('onDeleted');
              },
              deleteIcon: const Icon(Icons.delete),
              deleteIconColor: Colors.red,
              deleteButtonTooltipMessage: '删除',
            ),
            RawChip(
              label: const Text('小王'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              backgroundColor: Colors.blue,
              padding: const EdgeInsets.symmetric(vertical: 10),
            ),
            const RawChip(
              label: Text('小王'),
              elevation: 8,
              shadowColor: Colors.blue,
            ),
            RawChip(
              label: const Text('小王'),
              selected: _selected,
              onSelected: (v) {
                setState(() {
                  _selected = v;
                });
              },
              selectedColor: Colors.blue,
              selectedShadowColor: Colors.red,
            ),
            const RawChip(
              label: Text('小王'),
              selected: true,
              showCheckmark: true,
              checkmarkColor: Colors.red,
            ),
            RawChip(
              label: const Text('小王'),
              onPressed: () {
                print('onPressed');
              },
              pressElevation: 12,
            ),
          ],
        ),
        const Text('ChoiceChip'),
        Wrap(
          spacing: 15,
          children: List.generate(10, (index) {
            return ChoiceChip(
              label: Text('小王 $index'),
              selected: _selectIndex == index,
              onSelected: (v) {
                setState(() {
                  _selectIndex = index;
                });
              },
            );
          }).toList(),
        ),
        Text('FilterChip 选中：${_filters.join(',')}'),
        Wrap(
          spacing: 15,
          children: List.generate(10, (index) {
            return FilterChip(
              label: Text('小王 $index'),
              selected: _filters.contains('$index'),
              onSelected: (v) {
                setState(() {
                  if (v) {
                    _filters.add('$index');
                  } else {
                    _filters.removeWhere((f) {
                      return f == '$index';
                    });
                  }
                });
              },
            );
          }).toList(),
        ),
        const Text('ActionChip'),
        ActionChip(
            avatar: CircleAvatar(
              backgroundColor: Colors.grey.shade800,
              child: const Text('王'),
            ),
            label: const Text('小王'),
            onPressed: () {
              print("onPressed");
            }),
      ],
    );
  }
}
