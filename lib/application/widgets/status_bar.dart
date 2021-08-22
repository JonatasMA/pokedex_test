import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_test/application/utils/colors_utils.dart';

class StatusBar extends StatelessWidget {
  int statsValue;
  String statsName;
  StatusBar(this.statsValue, this.statsName);

  double _width() {
    return ((255 * this.statsValue) / 255) + 45;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            this.statsName,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w800),
          ),
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: ColorsUtils.statsBar(this.statsName, 0.5),
                ),
                width: 300,
                child: Text(
                  ' ',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w800),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: ColorsUtils.statsBar(this.statsName, 1.0),
                ),
                width: this._width(),
                child: Container(
                  child: Text(
                    ' ',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 6),
                child: Text(
                  this.statsValue.toString(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w800),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
