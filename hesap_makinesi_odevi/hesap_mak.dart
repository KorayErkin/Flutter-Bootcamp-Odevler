import 'package:flutter/material.dart';

class HesapMakinesi extends StatefulWidget {
  const HesapMakinesi({super.key});

  @override
  State<HesapMakinesi> createState() => _HesapMakinesiState();
}

class _HesapMakinesiState extends State<HesapMakinesi> {
  /* Number Button */
  Widget numberButton(String btnText, Color btnColor, Color txtColor) {
    return ElevatedButton(
      onPressed: () {
        calculate(btnText);
      },
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(90, 90),
        shape: const CircleBorder(),
        primary: btnColor,
      ),
      child: Text(
        btnText,
        style: TextStyle(fontSize: 25, color: txtColor),
      ),
    );
  }
  /* Number Button */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* Arka Plan Rengi */
      backgroundColor: Colors.black,
      /* Arka Plan Rengi */

      /* AppBar */
      appBar: AppBar(
        title: const Text("Hesap Makinesi"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      /* AppBar */

      /* Body */
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        /* Sayıların Text Kısmında Gözükeceği Yer */
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    text,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Color(0xFF22d1ee),
                      fontSize: 80,
                    ),
                  ),
                ),
              ],
            ),
            /* Numara Buttonların Olduğu Kısım */
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numberButton("C", const Color(0xFFe2f3f5), Colors.black),
                numberButton("+/-", const Color(0xFFe2f3f5), Colors.black),
                numberButton("%", const Color(0xFFe2f3f5), Colors.black),
                numberButton("/", const Color(0xFF3d5af1), Colors.white),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numberButton("7", (Colors.grey[850])!, Colors.white),
                numberButton("8", (Colors.grey[850])!, Colors.white),
                numberButton("9", (Colors.grey[850])!, Colors.white),
                numberButton("*", const Color(0xFF3d5af1), Colors.white),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numberButton("4", (Colors.grey[850])!, Colors.white),
                numberButton("5", (Colors.grey[850])!, Colors.white),
                numberButton("6", (Colors.grey[850])!, Colors.white),
                numberButton("-", const Color(0xFF3d5af1), Colors.white),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numberButton("1", (Colors.grey[850])!, Colors.white),
                numberButton("2", (Colors.grey[850])!, Colors.white),
                numberButton("3", (Colors.grey[850])!, Colors.white),
                numberButton("+", const Color(0xFF3d5af1), Colors.white),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    primary: (Colors.grey[850])!,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(28, 22, 90, 22),
                    child: Text(
                      "0",
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                numberButton(".", (Colors.grey[850])!, Colors.white),
                numberButton("=", const Color(0xFF3d5af1), Colors.white),
              ],
            ),
            const SizedBox(height: 10),
            /* Numara Buttonların Olduğu Kısım */
          ],
        ),
        /* Sayıların Text Kısmında Gözükeceği Yer */
      ),
      /* Body */
    );
  }

  /* Varsayılan değerler */
  int firstNumber = 0;
  int secondNumber = 0;
  String result = "";
  String text = "";
  String operation = "";
  /* Varsayılan değerler */

  /* Hesaplama Metodu Oluşturduk */
  void calculate(String btnText) {
    if (btnText == "C") {
      result = "";
      text = "";
      firstNumber = 0;
      secondNumber = 0;
    } else if (btnText == "+" ||
        btnText == "-" ||
        btnText == "x" ||
        btnText == "/") {
      firstNumber = int.parse(text);
      result = "";
      operation = btnText;
    } else if (btnText == "=") {
      secondNumber = int.parse(text);
      if (operation == "+") {
        result = (firstNumber + secondNumber).toString();
      }
      if (operation == "-") {
        result = (firstNumber - secondNumber).toString();
      }
      if (operation == "x") {
        result = (firstNumber * secondNumber).toString();
      }
      if (operation == "/") {
        result = (firstNumber ~/ secondNumber).toString();
      }
    } else {
      result = int.parse(text + btnText).toString();
    }
    setState(() {
      text = result;
    });
    /* Hesaplama Metodu Oluşturduk */
  }
}
