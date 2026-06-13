import 'package:flutter_test/flutter_test.dart';

import '../lib/main.dart';

void main() {
  testWidgets('displays user information', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Kadiri Great'), findsOneWidget);
    expect(find.text('Email: greatkadiri79@gmail.com'), findsOneWidget);
    expect(find.text('Phone: 08071578449'), findsOneWidget);
  });
}