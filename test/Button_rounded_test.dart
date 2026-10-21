import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/widgets/Button_rounded.dart';

void main() {

  testWidgets('Button_rounded displays its label', (tester) async {

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Button_rounded(
            label: 'Book Now',
            onPressed: () {},
          ),
        ),
      ),
    );

    expect(find.text('Book Now'), findsOneWidget);
  });


  testWidgets('Button_rounded responds to tapping', (tester) async {

    bool wasPressed = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Button_rounded(
            label: 'Book Now',
            onPressed: () {
              wasPressed = true;
            },
          ),
        ),
      ),
    );

    await tester.tap(find.text('Book Now'));
    await tester.pump();

    expect(wasPressed, isTrue);
  });
}