import 'package:pokedex_test/app//modules/home/widgets/pokemon_frame_widget.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';

main() {
  group('PokemonFrameWidget', () {
    testWidgets('has a title and message', (WidgetTester tester) async {
      await tester.pumpWidget(buildTestableWidget(PokemonFrameWidget(index: 1)));
      final titleFinder = find.text('T');
      expect(titleFinder, findsOneWidget);
    });
  });
}