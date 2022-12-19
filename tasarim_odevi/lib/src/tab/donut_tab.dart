import 'package:flutter/material.dart';

import '../util/donut_tile.dart';

class DonutTab extends StatelessWidget {

  // list of donuts
  List donutsSatista = [
    ["Dondurma", "36", Colors.blue, "assets/images/icecream_donut.png"],
    ["Çilek", "45", Colors.red, "assets/images/strawberry_donut.png"],
    ["Üzüm", "84", Colors.purple, "assets/images/grape_donut.png"],
    ["Çikolata", "95", Colors.brown, "assets/images/chocolate_donut.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsSatista.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutTat: donutsSatista[index][0],
          donutFiyat: donutsSatista[index][1],
          donutRenk: donutsSatista[index][2],
          resimAdi: donutsSatista[index][3],
        );
      },
    );
  }
}