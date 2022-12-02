# Testing

All tests for the flutter app are done in the /tests/ folder. Every test file needs to end in `_test.dart`, for example: `component_test.dart`.

## What to test

- Views
- Components
- Models
- The entire app! (we will figure this out later 💀)

## Steps

1. If a testing file does not already exist for whatever you want to test, create one. For example `/lib/component/DatePicker.component.dart` -> `/test/component/DatePicker_test.dart`
2. If you created a new widget test file, copy the content of `/test/widget_template_test.dart` into the new file. If you created a new model test file, copy the content of `/test/unit_template_test.dart` into the new file. These contain the basic implementation of a test.
3. Write your tests! View the section below on how to test specific things.

## Testing

- Views & Components: Render and test the widget with `await tester.pumpWidget(widget());`. See the examples below:
- Views: must be wrapped in a `MaterialApp` in order to be rendered. For example:
  ```dart
  await tester.pumpWidget(const MaterialApp(
      home: RegisterView(),
  ));
  ```
- Components: same as views, but must also be wrapped in a `Scaffold()`. For Example:
  ```dart
  await tester.pumpWidget(MaterialApp(
      home: Scaffold(
          body: Component()
  )));
  ```
- Models: Since these are not widgets and are usually just normal classes, they use normal testing (similar to junits). Look at one of the existing files for an example.

## Automation

We are going to be automatically deploying code in the future, which will make sure that all of the tests pass before deploying. So make sure your tests are passable, otherwise we will not be able to deploy any new code.
