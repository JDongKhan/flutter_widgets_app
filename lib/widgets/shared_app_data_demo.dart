import 'package:flutter/material.dart';

///@Description TODO
///@Author jd

class SharedAppDataDemo extends StatefulWidget {
  const SharedAppDataDemo({Key? key}) : super(key: key);

  @override
  State<SharedAppDataDemo> createState() => _SharedAppDataDemoState();
}

class _SharedAppDataDemoState extends State<SharedAppDataDemo> {
  int _fooVersion = 0;

  int _barVersion = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ShowSharedValue(appDataKey: 'foo'),
            const SizedBox(height: 16),
            const ShowSharedValue(appDataKey: 'bar'),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('change foo'),
              onPressed: () {
                _fooVersion += 1;
                // Changing the SharedAppData's value for 'foo' causes the widgets that
                // depend on 'foo' to be rebuilt.
                SharedAppData.setValue<String, String?>(
                    context, 'foo', 'FOO $_fooVersion'); // note: no setState()
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('change bar'),
              onPressed: () {
                _barVersion += 1;
                SharedAppData.setValue<String, String?>(
                    context, 'bar', 'BAR $_barVersion'); // note: no setState()
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ShowSharedValue extends StatelessWidget {
  const ShowSharedValue({Key? key, required this.appDataKey}) : super(key: key);

  final String appDataKey;

  @override
  Widget build(BuildContext context) {
    // The SharedAppData.getValue() call here causes this widget to depend
    // on the value of the SharedAppData's 'foo' key. If it's changed, with
    // SharedAppData.setValue(), then this widget will be rebuilt.
    final String value = SharedAppData.getValue<String, String>(
        context, appDataKey, () => 'initial');
    return Text('$appDataKey: $value');
  }
}
