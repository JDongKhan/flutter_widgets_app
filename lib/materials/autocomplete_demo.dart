import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class AutocompleteDemo extends StatelessWidget {
  AutocompleteDemo({Key? key}) : super(key: key);

  TextEditingController? _controller;
  final List<String> data = [
    'toly',
    'toly49',
    'toly42',
    'toly56',
    'card',
    'ls',
    'alex',
    'fan sha',
  ];

  Future<Iterable<String>> searchByArgs(String args) async {
    // 模拟网络请求
    await Future.delayed(const Duration(milliseconds: 200));

    return data.where((String name) => name.contains(args));
  }

  Future<Iterable<String>> buildOptions(
      TextEditingValue textEditingValue) async {
    if (textEditingValue.text == '') {
      return const Iterable<String>.empty();
    }
    return searchByArgs(textEditingValue.text);
  }

  final TextStyle lightTextStyle = const TextStyle(
    color: Colors.blue,
    fontWeight: FontWeight.bold,
  );
  InlineSpan formSpan(String src, String pattern) {
    List<TextSpan> span = [];
    List<String> parts = src.split(pattern);
    if (parts.length > 1) {
      for (int i = 0; i < parts.length; i++) {
        span.add(TextSpan(text: parts[i]));
        if (i != parts.length - 1) {
          span.add(TextSpan(text: pattern, style: lightTextStyle));
        }
      }
    } else {
      span.add(TextSpan(text: src));
    }
    return TextSpan(children: span);
  }

  Widget _buildOptionsView(
    BuildContext context,
    AutocompleteOnSelected<String> onSelected,
    Iterable<String> options,
  ) {
    return Material(
      child: ListView.builder(
        itemBuilder: (_, index) {
          final String option = options.elementAt(index);
          return InkWell(
            onTap: () => onSelected(option),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Text.rich(formSpan(option, _controller?.text ?? '')),
            ),
          );
        },
        itemCount: options.length,
      ),
    );
  }

  Widget _buildFieldView(
    BuildContext context,
    TextEditingController textEditingController,
    FocusNode focusNode,
    VoidCallback onFieldSubmitted,
  ) {
    _controller = textEditingController;
    return SizedBox(
      height: 36,
      child: TextFormField(
        controller: textEditingController,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          border: OutlineInputBorder(),
        ),
        focusNode: focusNode,
        onFieldSubmitted: (String value) {
          onFieldSubmitted();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '数据源',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Wrap(
          children: data.map((e) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(e),
            );
          }).toList(),
        ),
        Autocomplete<String>(
          optionsBuilder: buildOptions,
          // onSelected: onSelected,
          optionsViewBuilder: _buildOptionsView,
          fieldViewBuilder: _buildFieldView,
        ),
      ],
    );
  }
}
