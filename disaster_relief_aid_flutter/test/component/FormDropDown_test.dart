import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// import the widget to test

import 'package:disaster_relief_aid_flutter/component/FormDropDown.component.dart';

void main() {
  testWidgets("FormDropDown renders", (WidgetTester tester) async {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    // Render the widget
    await tester.pumpWidget(MaterialApp(
        title: "test",
        home: Scaffold(
            body: Form(
          key: _formKey,
          child: FormDropDown(
            items: const ["a", "b"],
            labelText: "Items",
            onSaved: (value) {},
          ),
        ))));
  });
}

/*
testWidgets('Counter increments smoke test', (WidgetTester tester) async {
  // Build our app and trigger a frame.
  await tester.pumpWidget(const MyApp());

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
*/
