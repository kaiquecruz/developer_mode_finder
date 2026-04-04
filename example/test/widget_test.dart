// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';


import 'package:developer_mode_finder_example/main.dart';

void main() {
  testWidgets('Verify Developer Mode UI', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the title and status label are present.
    expect(find.text('Developer Mode Finder'), findsOneWidget);
    expect(find.text('Developer Mode Status:'), findsOneWidget);

    // By default (on simulator/test environment without mocking), 
    // it should show DISABLED unless the native side is mocked.
    await tester.pump(); // Allow any async operations to complete if possible
    
    expect(find.text('DISABLED'), findsOneWidget);
  });
}

