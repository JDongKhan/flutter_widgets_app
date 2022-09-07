import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class ToggleButtonsDemo extends StatefulWidget {
  const ToggleButtonsDemo({Key? key}) : super(key: key);

  @override
  State<ToggleButtonsDemo> createState() => _ToggleButtonsDemoState();
}

class _ToggleButtonsDemoState extends State<ToggleButtonsDemo> {
  List<bool> _selecteds = [false, false, true];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ToggleButtons(
          isSelected: _selecteds,
          children: const <Widget>[
            Icon(Icons.local_cafe),
            Icon(Icons.fastfood),
            Icon(Icons.cake),
          ],
          onPressed: (index) {
            setState(() {
              _selecteds[index] = !_selecteds[index];
            });
          },
        ),
        ToggleButtons(
          color: Colors.green,
          selectedColor: Colors.orange,
          fillColor: Colors.red,
          isSelected: _selecteds,
          children: const <Widget>[
            Icon(Icons.local_cafe),
            Icon(Icons.fastfood),
            Icon(Icons.cake),
          ],
          onPressed: (index) {
            setState(() {
              _selecteds[index] = !_selecteds[index];
            });
          },
        ),
        ToggleButtons(
          borderRadius: BorderRadius.circular(30),
          borderColor: Colors.orange,
          borderWidth: 3,
          selectedBorderColor: Colors.deepOrange,
          isSelected: _selecteds,
          children: const <Widget>[
            Icon(Icons.local_cafe),
            Icon(Icons.fastfood),
            Icon(Icons.cake),
          ],
          onPressed: (index) {
            setState(() {
              _selecteds[index] = !_selecteds[index];
            });
          },
        ),
      ],
    );
  }
}
