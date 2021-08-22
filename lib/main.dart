import 'package:flutter/material.dart';
import 'package:pokedex_test/application/app.dart';
import 'package:pokedex_test/application/models/pokemons.dart';
import 'package:pokedex_test/application/http/request.dart';

Future main() async {
  var jsonPokemons = await RequestPokemons.fetchPokemons();
  var pokemons = Pokemons.fromJson(jsonPokemons);
  runApp(PokedexApp(pokemons));
}

