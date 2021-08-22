import 'dart:convert';

import 'package:http/http.dart' as http;

class RequestUtils {
  static Future fetchPokemons() async {
    var headers = {'Content-Type': 'application/json'};
    var body =
        '''{"query":"query samplePokeAPIquery {\\r\\n  gen1_species: pokemon_v2_pokemonspecies(where: {pokemon_v2_generation: {name: {_eq: \\"generation-iii\\"}}}, order_by: {id: asc}) {\\r\\n    name\\r\\n    id\\r\\n    pokemon_v2_pokemons {\\r\\n      pokemon_v2_pokemontypes {\\r\\n        pokemon_v2_type {\\r\\n          name\\r\\n        }\\r\\n      }\\r\\n      pokemon_v2_pokemonabilities {\\r\\n        is_hidden\\r\\n        pokemon_v2_ability {\\r\\n          name\\r\\n        }\\r\\n      }\\r\\n      pokemon_v2_pokemonstats {\\r\\n        id\\r\\n        base_stat\\r\\n        pokemon_v2_stat {\\r\\n          name\\r\\n        }\\r\\n      }\\r\\n      weight\\r\\n    }\\r\\n    pokemon_v2_pokemoncolor {\\r\\n        name\\r\\n    }\\r\\n  }\\r\\n}","variables":{}}''';

    var response = await http.post(
        Uri.parse('https://beta.pokeapi.co/graphql/v1beta'),
        headers: headers,
        body: body);

    return jsonDecode(response.body);
  }
}
