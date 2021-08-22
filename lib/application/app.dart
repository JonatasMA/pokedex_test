import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokedex_test/application/models/pokemons.dart';
import 'package:pokedex_test/application/widgets/pokemons_list.dart';

class PokedexApp extends StatelessWidget {
  Pokemons pokemons;

  PokedexApp(this.pokemons);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      theme: ThemeData(

        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(title: 'Pokedex', pokemons: this.pokemons),
    );
  }
}

class MyHomePage extends StatefulWidget {
  var pokemons;
  MyHomePage({Key? key, required this.title, required this.pokemons})
      : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState(pokemons);
}

class _MyHomePageState extends State<MyHomePage> {
  var pokemons;
  _MyHomePageState(this.pokemons);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Color.fromRGBO(70, 70, 70, 1),
        backgroundColor: Color.fromRGBO(70, 70, 70, 1),
        title: Text(widget.title),
      ),
      body: Center(child: PokemonsList(this.pokemons)),
    );
  }
}
