import 'package:flutter/material.dart';

class PokemonFrameWidget extends StatelessWidget {
  final int index;
  const PokemonFrameWidget({Key? key, this.index = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Text('title'));
  }
}