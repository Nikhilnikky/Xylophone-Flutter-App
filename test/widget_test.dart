// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:xylophone/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      // const MyApp()
      return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 37, 34),
        appBar: AppBar(
          title: const Text("Xylophone"),
          backgroundColor: Colors.teal,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton(
                  color: const Color.fromARGB(255, 255, 238, 2),
                  onPressed: () {
                    playSound(1);
                  },
                  child: const Text(""),
                  height: 70,
                ),
                FlatButton(
                  color: const Color.fromARGB(255, 2, 255, 11),
                  onPressed: () {
                    playSound(2);
                  },
                  child: const Text(""),
                  height: 70,
                ),
                FlatButton(
                  color: const Color.fromARGB(255, 0, 247, 247),
                  onPressed: () {
                    playSound(3);
                  },
                  child: const Text(""),
                  height: 70,
                ),
                FlatButton(
                  color: const Color.fromARGB(255, 2, 91, 255),
                  onPressed: () {
                    playSound(4);
                  },
                  child: const Text(""),
                  height: 70,
                ),
                FlatButton(
                  color: const Color.fromARGB(255, 112, 2, 255),
                  onPressed: () {
                    playSound(5);
                  },
                  child: const Text(""),
                  height: 70,
                ),
                FlatButton(
                  color: const Color.fromARGB(255, 255, 2, 213),
                  onPressed: () {
                    playSound(6);
                  },
                  child: const Text(""),
                  height: 70,
                ),
                FlatButton(
                  color: const Color.fromARGB(255, 255, 2, 78),
                  onPressed: () {
                    playSound(7);
                  },
                  child: const Text(""),
                  height: 70,
                ),
              ],
            ),
          ),
        ),
      ),
    )
    );

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
