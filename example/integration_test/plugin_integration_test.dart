// This is a basic Flutter integration test.
//
// Since integration tests run in a full Flutter application, they can interact
// with the host side of a plugin implementation, unlike Dart unit tests.
//
// For more information about Flutter integration tests, please see
// https://flutter.dev/to/integration-testing

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:developer_mode_finder/developer_mode_finder.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('isDeveloperModeEnabled check', (WidgetTester tester) async {
    final DeveloperModeFinder plugin = DeveloperModeFinder();
    final bool isEnabled = await plugin.isDeveloperModeEnabled();
    // The value depends on the device/simulator state, we just verify it returns a boolean.
    expect(isEnabled, isA<bool>());
  });
}

