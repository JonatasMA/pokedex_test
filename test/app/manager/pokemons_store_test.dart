import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex_test/app/manager/pokemons_store.dart';
 
void main() {
  late PokemonsStore store;

  setUpAll(() {
    store = PokemonsStore();
  });

  test('increment count', () async {
    expect(store.pokemons, equals(0));
    store.increment();
    expect(store.pokemons, equals(1));
  });
}