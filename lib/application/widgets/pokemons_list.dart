import 'package:pokedex_test/application/models/pokemons.dart';
import 'package:pokedex_test/application/widgets/list_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PokemonsList extends StatelessWidget {
  Pokemons pokemons;

  PokemonsList(this.pokemons);

  buildFrames() {
    List<Widget> pokemonsWidgets = [];
    for (var pokemon in this.pokemons.pokemons) {
      pokemonsWidgets.add(ListFrame(pokemon.id, pokemon.name, pokemon.types));
    }
    return pokemonsWidgets;
  }

  @override
  Widget build(BuildContext context) {
    // return Text('aaaa');
    return Container(
      color: Color.fromRGBO(70, 70, 70, 1),
      child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: this.buildFrames())
    );
  }
}
