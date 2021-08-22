// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemons_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokemonsStore on _PokemonsStoreBase, Store {
  final _$pokemonsAtom = Atom(name: '_PokemonsStoreBase.pokemons');

  @override
  Pokemons get pokemons {
    _$pokemonsAtom.reportRead();
    return super.pokemons;
  }

  @override
  set pokemons(Pokemons value) {
    _$pokemonsAtom.reportWrite(value, super.pokemons, () {
      super.pokemons = value;
    });
  }

  final _$incrementAsyncAction = AsyncAction('_PokemonsStoreBase.increment');

  @override
  Future<void> increment() {
    return _$incrementAsyncAction.run(() => super.increment());
  }

  @override
  String toString() {
    return '''
pokemons: ${pokemons}
    ''';
  }
}
