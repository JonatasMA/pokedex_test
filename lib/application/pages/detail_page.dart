import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokedex_test/application/models/pokemons.dart';
import 'package:pokedex_test/application/utils/colors_utils.dart';
import 'package:pokedex_test/application/utils/string_utils.dart';
import 'package:pokedex_test/application/widgets/detail_view.dart';

class DetailPage extends StatelessWidget {
  Pokemon pokemon;

  DetailPage(this.pokemon);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(70, 70, 70, 1),
      appBar: AppBar(
        backgroundColor: ColorsUtils.pokemonColor(this.pokemon.color),
        title: Text(StringUtils.capitalizeFirstLetter(this.pokemon.name)),
      ),
      body: Center(
        child: DetailView(this.pokemon),
      ),
    );
  }
}
