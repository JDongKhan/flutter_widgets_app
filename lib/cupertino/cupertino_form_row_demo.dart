import 'package:flutter/cupertino.dart';

///@Description TODO
///@Author jd
class CupertinoFormRowDemo extends StatefulWidget {
  const CupertinoFormRowDemo({Key? key}) : super(key: key);

  @override
  State<CupertinoFormRowDemo> createState() => _CupertinoFormRowDemoState();
}

class _CupertinoFormRowDemoState extends State<CupertinoFormRowDemo> {
  bool toggleValue = false;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoFormSection(
          header: const Text('SECTION 1'),
          children: <Widget>[
            CupertinoFormRow(
              prefix: const Text('Toggle'),
              helper: const Text('Use your instincts'),
              error: toggleValue ? const Text('Cannot be true') : null,
              child: CupertinoSwitch(
                value: toggleValue,
                onChanged: (bool value) {
                  setState(() {
                    toggleValue = value;
                  });
                },
              ),
            ),
            CupertinoTextFormFieldRow(),
          ],
        ),
      ),
    );
  }
}
