import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokedex_test/application/models/pokemons.dart';
import 'package:pokedex_test/application/widgets/type_chip.dart';
import 'package:pokedex_test/application/utils/colors_utils.dart';
import 'package:pokedex_test/application/utils/string_utils.dart';

class ListFrame extends StatelessWidget {
  Pokemon pokemon;

  ListFrame(this.pokemon);

  String _pokemonOfficialArt() {
    return 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${this.pokemon.id}.png';
  }

  String _pokemonLabel() {
    return '#${this.pokemon.id.toString().padLeft(3, '0')} ${StringUtils.capitalizeFirstLetter(this.pokemon.name)}';
  }

  List<Widget> _generateTypes() {
    List<Widget> types = [];
    for (var type in this.pokemon.types) {
      types.add(TypeChip(type, true));
    }
    return types;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: ColorsUtils.pokemonColor(this.pokemon.color),
          child: Column(
            children: [
              Image.network(
                this._pokemonOfficialArt(),
                width: 200,
              ),
            ],
          ),
        ),
        Positioned(
            child: Container(
              color: Colors.black.withOpacity(0.7),
              width: 200,
              height: 75,
              margin: const EdgeInsets.only(bottom: 0),
              child: Container(
                  margin: const EdgeInsets.only(left: 6, top: 6),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 6),
                        width: 400,
                        child: Text(
                          this._pokemonLabel(),
                          textAlign: TextAlign.left,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: this._generateTypes(),
                      )
                    ],
                  )),
            ),
            bottom: 0)
      ],
    );
  }
}
