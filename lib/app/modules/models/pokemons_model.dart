class Pokemons {
  List<Pokemon> pokemons = [];

  Pokemons(this.pokemons);

  factory Pokemons.fromJson(Map<String, dynamic> json) {
    Stats extractStats(stats) {
      Map<String, dynamic> statsJson = {};
      for (var stat in stats) {
        statsJson[stat['pokemon_v2_stat']['name']] = stat['base_stat'];
      }

      return Stats(
          statsJson['hp'],
          statsJson['attack'],
          statsJson['defense'],
          statsJson['special-attack'],
          statsJson['special-defense'],
          statsJson['speed']);
    }

    List<Pokemon> pokemons = [];
    for (var species in json['data']['gen1_species']) {
      List<Abilities> abilities = [];
      var pokemonsJson = species['pokemon_v2_pokemons'][0];
      for (var pokemonAbilitie in pokemonsJson['pokemon_v2_pokemonabilities']) {
        abilities.add(Abilities(pokemonAbilitie['is_hidden'],
            pokemonAbilitie['pokemon_v2_ability']['name']));
      }

      List<String> types = [];
      for (var type in pokemonsJson['pokemon_v2_pokemontypes']) {
        types.add(type['pokemon_v2_type']['name']);
      }

      Stats stats = extractStats(pokemonsJson['pokemon_v2_pokemonstats']);

      Pokemon pokemon = Pokemon(
          species['id'],
          species['name'],
          pokemonsJson['weight'].toDouble(),
          types,
          abilities,
          stats,
          species['pokemon_v2_pokemoncolor']['name']);

      pokemons.add(pokemon);
    }

    return Pokemons(pokemons);
  }
}

class Pokemon {
  int id;
  String name;
  double weight;
  List<String> types;
  List<Abilities> abilities;
  Stats stats;
  String color;

  Pokemon(this.id, this.name, this.weight, this.types, this.abilities,
      this.stats, this.color);
}

class Abilities {
  bool isHidden;
  String name;

  Abilities(this.isHidden, this.name);
}

class Stats {
  int hp;
  int attack;
  int defense;
  int specialAttack;
  int specialDefense;
  int speed;

  Stats(this.hp, this.attack, this.defense, this.specialAttack,
      this.specialDefense, this.speed);
}
