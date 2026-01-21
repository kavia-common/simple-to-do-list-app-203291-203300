import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_flutter_frontend/main.dart';

void main() {
  testWidgets('Renders app header and input controls', (WidgetTester tester) async {
    await tester.pumpWidget(const TodoApp());

    expect(find.text('My Tasks'), findsOneWidget);
    expect(find.text('To‑Do'), findsOneWidget);

    expect(find.byType(TextField), findsOneWidget);
    expect(find.widgetWithText(FilledButton, 'Add'), findsOneWidget);
  });

  testWidgets('Shows empty state when there are no tasks', (WidgetTester tester) async {
    await tester.pumpWidget(const TodoApp());

    expect(find.text('No tasks yet'), findsOneWidget);
    expect(find.text('Add your first task above.'), findsOneWidget);
    expect(find.byIcon(Icons.checklist_rounded), findsOneWidget);
  });
}
