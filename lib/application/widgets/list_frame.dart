import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokedex_test/application/widgets/type_chip.dart';
import 'package:pokedex_test/application/utils/colors_utils.dart';
import 'package:pokedex_test/application/utils/string_utils.dart';

class ListFrame extends StatelessWidget {
  int id = 0;
  String name = '';
  List types = [];
  String color;

  ListFrame(this.id, this.name, this.types, this.color);

  String pokemonOfficialArt() {
    return 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${this.id}.png';
  }

  String pokemonLabel() {
    return '#${this.id.toString().padLeft(3,'0')} ${StringUtils.capitalizeFirstLetter(this.name)}';
  }

  List<Widget> generateTypes() {
    List<Widget> types = [];
    for (var type in this.types) {
      types.add(TypeChip(type));
    }
    return types;
  }

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        Container(
            color: ColorsUtils.pokemonColor(color),
            child: Column(
              children: [
                Image.network(
                  this.pokemonOfficialArt(),
                  width: 200,
                ),
              ],
            )),
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
                          width: 200,
                          child: Text(this.pokemonLabel(),
                              textAlign: TextAlign.left,
                              style: const TextStyle(color: Colors.white))),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: this.generateTypes(),
                      )
                    ],
                  )),
            ),
            bottom: 0)
      ],
    );
  }
}
