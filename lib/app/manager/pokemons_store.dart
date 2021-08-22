import 'package:mobx/mobx.dart';
import 'package:pokedex_test/app/modules/models/pokemons_model.dart';
import 'package:pokedex_test/app/modules/utils/request_utils.dart';

part 'pokemons_store.g.dart';

class PokemonsStore = _PokemonsStoreBase with _$PokemonsStore;
abstract class _PokemonsStoreBase with Store {
  @observable
  Pokemons pokemons = [] as Pokemons;

  @action
  Future<void> increment() async {
    Pokemons pokemons = await RequestUtils.fetchPokemons();
  }
}