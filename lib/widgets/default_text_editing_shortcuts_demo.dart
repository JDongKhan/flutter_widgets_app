import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///@Description TODO
///@Author jd
class DefaultTextEditingShortcutsDemo extends StatefulWidget {
  const DefaultTextEditingShortcutsDemo({Key? key}) : super(key: key);

  @override
  State<DefaultTextEditingShortcutsDemo> createState() =>
      _DefaultTextEditingShortcutsDemoState();
}

class _DefaultTextEditingShortcutsDemoState
    extends State<DefaultTextEditingShortcutsDemo> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    // If using WidgetsApp or its descendents MaterialApp or CupertinoApp,
    // then DefaultTextEditingShortcuts is already being inserted into the
    // widget tree.
    return DefaultTextEditingShortcuts(
      child: Center(
        child: Shortcuts(
          shortcuts: const <ShortcutActivator, Intent>{
            SingleActivator(LogicalKeyboardKey.arrowDown, alt: true):
                NextFocusIntent(),
            SingleActivator(LogicalKeyboardKey.arrowUp, alt: true):
                PreviousFocusIntent(),
          },
          child: Column(
            children: <Widget>[
              const TextField(
                decoration: InputDecoration(
                  hintText: 'alt + down moves to the next field.',
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'And alt + up moves to the previous.',
                ),
              ),
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              Shortcuts(
                shortcuts: <ShortcutActivator, Intent>{
                  const SingleActivator(LogicalKeyboardKey.arrowUp):
                      IncrementCounterIntent(),
                  const SingleActivator(LogicalKeyboardKey.arrowDown):
                      DecrementCounterIntent(),
                },
                child: Actions(
                  actions: <Type, Action<Intent>>{
                    IncrementCounterIntent:
                        CallbackAction<IncrementCounterIntent>(
                      onInvoke: (IncrementCounterIntent intent) {
                        setState(() {
                          _counter++;
                        });
                        return null;
                      },
                    ),
                    DecrementCounterIntent:
                        CallbackAction<DecrementCounterIntent>(
                      onInvoke: (DecrementCounterIntent intent) {
                        setState(() {
                          _counter--;
                        });
                        return null;
                      },
                    ),
                  },
                  child: const TextField(
                    maxLines: 2,
                    decoration: InputDecoration(
                      hintText: 'Up/down increment/decrement here.',
                    ),
                  ),
                ),
              ),
              const TextField(
                maxLines: 2,
                decoration: InputDecoration(
                  hintText: 'Up/down behave normally here.',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IncrementCounterIntent extends Intent {}

class DecrementCounterIntent extends Intent {}
