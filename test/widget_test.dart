import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/main.dart';
import 'package:southsea_cinema/views/home_view.dart';

void main() {
  group('App smoke tests', () {

    testWidgets('App displays HomeView as home',
        (WidgetTester tester) async {

      await tester.pumpWidget(const SouthseaCinemaApp());
      await tester.pumpAndSettle();

      expect(find.byType(HomeView), findsOneWidget);
      expect(find.text('Welcome to Southsea Cinema'), findsOneWidget);
    });

    testWidgets('Displays movies and booking buttons',
        (WidgetTester tester) async {

      await tester.pumpWidget(const SouthseaCinemaApp());
      await tester.pumpAndSettle();

      expect(find.text('Interstellar'), findsOneWidget);
      expect(find.text('Openheimer'), findsOneWidget);
      expect(find.text('Book Now'), findsNWidgets(2));
    });

  });
}