import 'package:clean_architecture_flutter/app_wd.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('[System Testing]: Login', () {
    testWidgets(
        'Given user'
        'When user login with correct email and password'
        'Then system should login successfully', (tester) async {
      await tester.pumpWidget(const ProviderScope(child: AppWD()));

      const username = 'testusername';
      const password = 'testpassword';

      // Find 2 textfield and submit button
      final userNameTextField = find.byWidgetPredicate(
        (widget) => widget is TextField && widget.decoration?.hintText == 'Enter Username',
      );
      final passwordTextField = find.byWidgetPredicate(
        (widget) => widget is TextField && widget.decoration?.hintText == 'Enter Password',
      );
      final submitButton = find.byWidgetPredicate((widget) => widget is Text && widget.data == 'Sign In');

      expect(userNameTextField, findsOneWidget);
      expect(passwordTextField, findsOneWidget);
      expect(submitButton, findsOneWidget);

      await tester.enterText(userNameTextField, username);
      await Future.delayed(const Duration(seconds: 1));
      await tester.enterText(passwordTextField, password);
      await Future.delayed(const Duration(seconds: 1));
      await tester.pumpAndSettle();
      await tester.tap(submitButton);
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 1));

      expect(find.byWidgetPredicate((widget) => widget is Text && widget.data == 'Homepage'), findsOneWidget);
    });
  });
}
