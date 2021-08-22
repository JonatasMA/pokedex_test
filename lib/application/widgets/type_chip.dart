import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokedex_test/application/utils/colors_utils.dart';
import 'package:pokedex_test/application/utils/string_utils.dart';

class TypeChip extends StatelessWidget {
  String type = '';
  bool withMargin = false;

  TypeChip(this.type, this.withMargin);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: this.withMargin ? EdgeInsets.only(right: 6) : null,
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: ColorsUtils.typeColor(this.type),
        ),
        child: Text(StringUtils.capitalizeFirstLetter(this.type),
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white)));
  }
}
