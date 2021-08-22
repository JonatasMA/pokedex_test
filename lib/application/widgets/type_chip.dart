import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TypeChip extends StatelessWidget {
  String pokemonType = '';

  TypeChip(this.pokemonType);

  String capitalizeFirstLetter() {
    return this.pokemonType.substring(0,1).toUpperCase() + this.pokemonType.substring(1);
  }

  Color typeColor() {
    switch (this.pokemonType) {
      case 'bug':
        return Color.fromRGBO(168, 184, 32, 1);
      case 'dark':
        return Color.fromRGBO(112, 88, 72, 1);
      case 'dragon':
        return Color.fromRGBO(112, 56, 248, 1);
      case 'electric':
        return Color.fromRGBO(248, 208, 48, 1);
      case 'fairy':
        return Color.fromRGBO(238, 153, 172, 1);
      case 'fire':
        return Color.fromRGBO(240, 128, 48, 1);
      case 'fighting':
        return Color.fromRGBO(192, 48, 40, 1);
      case 'flying':
        return Color.fromRGBO(168, 144, 240, 1);
      case 'ghost':
        return Color.fromRGBO(112, 88, 152, 1);
      case 'grass':
        return Color.fromRGBO(120, 200, 80, 1);
      case 'ground':
        return Color.fromRGBO(224, 192, 104, 1);
      case 'ice':
        return Color.fromRGBO(152, 216, 216, 1);
      case 'normal':
        return Color.fromRGBO(168, 168, 120, 1);
      case 'poison':
        return Color.fromRGBO(160, 64, 160, 1);
      case 'psychic':
        return Color.fromRGBO(248, 88, 136, 1);
      case 'rock':
        return Color.fromRGBO(184, 160, 56, 1);
      case 'steel':
        return Color.fromRGBO(184, 184, 208, 1);
      case 'water':
        return Color.fromRGBO(104, 144, 240, 1);
    }
    return Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 6),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: this.typeColor(),
        ),
        child: Text(this.capitalizeFirstLetter(),
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white)));
  }
}
