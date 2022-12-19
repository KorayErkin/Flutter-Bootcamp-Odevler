import 'package:tasarim_odev/src/util/my_tab.dart';
import 'package:tasarim_odev/src/tab/burger_tab.dart';
import 'package:tasarim_odev/src/tab/donut_tab.dart';
import 'package:tasarim_odev/src/tab/pancake_tab.dart';
import 'package:tasarim_odev/src/tab/pizza_tab.dart';
import 'package:tasarim_odev/src/tab/smoothie_tab.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /* My Tabs */
  List<Widget> myTabs = const [
    /* Donut Tab Kısmı */
    MyTab(iconYol: 'assets/icons/donut.png'),
    /* Donut Tab Kısmı */

    /* Burger Tab Kısmı */
    MyTab(iconYol: 'assets/icons/burger.png'),
    /* Burger Tab Kısmı */

    /* Smoothie Tab Kısmı */
    MyTab(iconYol: 'assets/icons/smoothie.png'),
    /* Smoothie Tab Kısmı */

    /* Pancake Tab Kısmı */
    MyTab(iconYol: 'assets/icons/pancakes.png'),
    /* Pancake Tab Kısmı */

    /* Pizza Tab Kısmı */
    MyTab(iconYol: 'assets/icons/pizza.png'),
    /* Pizza Tab Kısmı */
  ];
  /* My Tabs */

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        /* AppBar */
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: IconButton(
              onPressed: () {
                /* Basılınca Drawer Açılacak */
              },
              icon: Icon(
                Icons.menu_sharp,
                color: Colors.grey.shade800,
                size: 36,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: IconButton(
                onPressed: () {
                  /* Basılınca Profile gidecek */
                },
                icon: Icon(
                  Icons.person_sharp,
                  color: Colors.grey.shade800,
                  size: 36,
                ),
              ),
            ),
          ],
        ),
        /* AppBar */

        /* Body */
        body: Column(
          children: [
            /* Ben Yemek İstiyorum Yazısı */
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
              child: Row(
                children: [
                  Text(
                    'Yemek yemek istiyorum',
                    style: TextStyle(fontSize: 24, color: Colors.grey.shade600),
                  ),
                  const Text(
                    ' Yemek',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            /* Ben Yemek İstiyorum Yazısı */

            /* Tab Bar Kısmı */
            TabBar(tabs: myTabs),
            /* Tab Bar Kısmı */

            /* Tab Bar Görünüm */
            Expanded(
              child: TabBarView(
                children: [
                  DonutTab(),
                  BurgerTab(),
                  SmoothieTab(),
                  PancakeTab(),
                  PizzaTab(),
                ],
              ),
            ),
            /* Tab Bar Görünüm */
          ],
        ),
        /* Body */
      ),
    );
  }
}
