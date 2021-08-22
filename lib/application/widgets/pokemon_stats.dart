import 'package:flutter/cupertino.dart';
import 'package:pokedex_test/application/models/pokemons.dart';
import 'package:pokedex_test/application/widgets/status_bar.dart';

class PokemonStats extends StatelessWidget {
  Stats pokemonStats;

  PokemonStats(this.pokemonStats);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      child: Column(
        children: [
          StatusBar(this.pokemonStats.hp, 'HP'),
          StatusBar(this.pokemonStats.attack, 'Atk'),
          StatusBar(this.pokemonStats.defense, 'Def'),
          StatusBar(this.pokemonStats.specialAttack, 'Sp. Atk'),
          StatusBar(this.pokemonStats.specialDefense, 'Sp. Def'),
          StatusBar(this.pokemonStats.speed, 'Spe'),
        ],
      ),
    );
  }
}
