import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cinestream/app.dart';

void main() {
  testWidgets('App renders CineStream title', (WidgetTester tester) async {
    await tester.pumpWidget(
      const ProviderScope(child: CineStreamApp()),
    );

    // Verify the app title renders
    expect(find.text('Niji'), findsOneWidget);
    expect(find.text('Stream'), findsOneWidget);
  });
}
