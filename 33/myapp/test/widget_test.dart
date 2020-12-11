// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:app_tv/app/app.module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:app_tv/main.dart';

void main() {
  testWidgets('navigate next level', (WidgetTester tester) async {
    await Firebase.initializeApp();
    await tester.pumpWidget(ScenePlay(level: '1', scene: 'level',));
    expect(find.text('Beginer 1'), findsOneWidget);
    expect(find.text('Beginer 2'), findsNothing);

    await tester.tap(find.byIcon(Icons.arrow_forward));
    await tester.pump();
    expect(find.text(''), findsOneWidget);

  });


}