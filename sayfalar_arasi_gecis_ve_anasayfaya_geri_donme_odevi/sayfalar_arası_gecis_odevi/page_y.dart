import 'package:flutter/material.dart';
import 'package:tasarim_odevi/sayfalar_aras%C4%B1_gecis_odevi/home_page.dart';

class PageY extends StatefulWidget {
  const PageY({super.key});

  @override
  State<PageY> createState() => _PageYState();
}

class _PageYState extends State<PageY> {
  void backButton() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        backButton();
        return Future.value(false);
      },
      child: Scaffold(
        /* AppBar */
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Y Sayfası",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        /* AppBar */
      ),
    );
  }
}
