# Testing

All tests for the flutter app are done in the /tests/ folder. Every test file needs to end in `_test.dart`, for example: `component_test.dart`.

## What to test

- Views
- Components
- Models
- The entire app!

## Steps

1. If a testing file does not already exist for whatever you want to test, create one. For example `/lib/component/DatePicker.component.dart` -> `/test/component/DatePicker_test.dart`
2. If you created a new file, copy the content of `/test/template_test.dart` into the new file. This contains the basic implementation of a test.
3. Write your tests! View the section below on how to test specific things.

## Testing Views

- All: Render and test the widget with `await tester.pumpWidget(widget());`. See the examples below:
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
- Models: Uses normal dart testing:
  