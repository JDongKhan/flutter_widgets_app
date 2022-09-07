import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
/// MaterialApp 增加 restorationScopeId

class RestorationDemo extends StatefulWidget {
  const RestorationDemo({Key? key}) : super(key: key);

  @override
  State<RestorationDemo> createState() => _RestorationDemoState();
}

class _RestorationDemoState extends State<RestorationDemo>
    with RestorationMixin {
  // The current value of the counter is stored in a [RestorableProperty].
  // During state restoration it is automatically restored to its old value.
  // If no restoration data is available to restore the counter from, it is
  // initialized to the specified default value of zero.
  final RestorableInt _counter = RestorableInt(0);

  // In this example, the restoration ID for the mixin is passed in through
  // the [StatefulWidget]'s constructor.
  @override
  String? get restorationId => 'counter';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    // All restorable properties must be registered with the mixin. After
    // registration, the counter either has its old value restored or is
    // initialized to its default value.
    registerForRestoration(_counter, 'count');
  }

  void _incrementCounter() {
    setState(() {
      // The current value of the property can be accessed and modified via
      // the value getter and setter.
      _counter.value++;
    });
  }

  @override
  void dispose() {
    _counter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restorable Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${_counter.value}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
