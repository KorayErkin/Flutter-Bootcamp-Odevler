import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutTat;
  final String donutFiyat;
  final donutRenk;
  final String resimAdi;

  final double borderRadius = 12;

  const DonutTile({
    super.key,
    required this.donutTat,
    required this.donutFiyat,
    required this.donutRenk,
    required this.resimAdi,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: donutRenk[50],
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Column(
          children: [
            // fiyat
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: donutRenk[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(borderRadius),
                      topRight: Radius.circular(borderRadius),
                    ),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    '\$$donutFiyat',
                    style: TextStyle(
                      color: donutRenk[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),

            // donut resim
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 16),
              child: Image.asset(resimAdi),
            ),

            // donut Tat
            Text(
              donutTat,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              "Dunkin's",
              style: TextStyle(color: Colors.grey[600]),
            ),

            // love icon + add button
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /* Favori Button */
                  Icon(
                    Icons.favorite_sharp,
                    color: Colors.pink[400],
                  ),

                  
                  const Text("Ekle")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}