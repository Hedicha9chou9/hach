import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:aumatedtest/main.dart' as app;
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('test tap', (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();
    final Finder textFieldFinder  = find.byType(TextField);
    final Finder button = find.byIcon(Icons.add);
    for (var i = 0; i < 10; i++) {
      await tester.tap(button);
      await Future.delayed(const Duration(seconds: 1));
    }
    await tester.tap(textFieldFinder);
    await tester.enterText(textFieldFinder,'hedi');
    await tester.pumpAndSettle();
    expect(find.text('10'), findsOneWidget);
  });
}
