// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:drillsan/main.dart';

void main() {
  testWidgets('Math drill app launches and shows layout selector', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the layout selector screen is shown with the title
    expect(find.text('算数ドリル - レイアウト選択'), findsOneWidget);
    
    // Verify that we have layout options available
    expect(find.text('レイアウトを選択してください'), findsOneWidget);
    
    // Verify that at least one layout card is present
    expect(find.text('Layout 1: Classic Centered'), findsOneWidget);
  });
  
  testWidgets('Can navigate to a layout screen', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    // Find and tap the first layout card
    await tester.tap(find.text('Layout 1: Classic Centered'));
    await tester.pumpAndSettle();

    // Verify that we navigated to the layout screen
    expect(find.text('Classic Centered'), findsOneWidget);
    
    // Verify that the numpad is present
    expect(find.text('0'), findsOneWidget);
    expect(find.text('OK'), findsOneWidget);
    expect(find.text('C'), findsOneWidget);
  });
}
