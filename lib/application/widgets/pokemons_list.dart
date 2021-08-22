import 'package:pokedex_test/application/models/pokemons.dart';
import 'package:pokedex_test/application/pages/detail_page.dart';
import 'package:pokedex_test/application/widgets/list_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PokemonsList extends StatelessWidget {
  Pokemons pokemons;

  PokemonsList(this.pokemons);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(70, 70, 70, 1),
      child: GridView.builder(
        itemCount: this.pokemons.pokemons.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return new Card(
            child: new InkResponse(
              child: ListFrame(this.pokemons.pokemons[index]),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        DetailPage(this.pokemons.pokemons[index])));
              },
            ),
          );
        },
      ),
    );
  }
}
