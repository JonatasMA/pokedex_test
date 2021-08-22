import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokedex_test/application/models/pokemons.dart';
import 'package:pokedex_test/application/utils/colors_utils.dart';
import 'package:pokedex_test/application/utils/string_utils.dart';
import 'package:pokedex_test/application/widgets/pokemon_stats.dart';
import 'package:pokedex_test/application/widgets/type_chip.dart';

class DetailView extends StatelessWidget {
  Pokemon pokemon;

  DetailView(this.pokemon);

  String _pokemonOfficialArt() {
    return 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${this.pokemon.id}.png';
  }

  String _pokemonLabel() {
    return '#${this.pokemon.id.toString().padLeft(3, '0')}';
  }

  List<Widget> _generateTypes() {
    List<Widget> types = [];
    for (var i=0; i < this.pokemon.types.length; i++) {
      types.add(TypeChip(this.pokemon.types[i], this.pokemon.types.length == 2 && i == 0));
    }
    return types;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16)),
            color: ColorsUtils.pokemonColor(this.pokemon.color),
          ),
          child: Column(
            children: [
              Image.network(
                this._pokemonOfficialArt(),
                width: 250,
              ),
              Container(
                padding: EdgeInsets.all(6),
                child: Text(
                  _pokemonLabel(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _generateTypes(),
              )
            ],
          ),
        ),
        PokemonStats(this.pokemon.stats)
      ],
    );
  }
}
