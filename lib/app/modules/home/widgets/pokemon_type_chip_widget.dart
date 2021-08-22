import 'package:flutter/material.dart';
import 'package:pokedex_test/app/modules/utils/colors_utils.dart';
import 'package:pokedex_test/app/modules/utils/string_utils.dart';

class PokemonTypeChipWidget extends StatelessWidget {
  final String type;
  const PokemonTypeChipWidget({Key? key, this.type = "Normal"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 6),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: ColorsUtils.typeColor(this.type),
      ),
      child: Text(
        StringUtils.capitalizeFirstLetter(this.type),
        textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
