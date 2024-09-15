import 'package:flutter/material.dart';

import '../util/card_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List screens = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(" My E-Commerce App"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.black,
            child: Column(
              children: [
                GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2 / 3,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1,
                    ),
                    padding: EdgeInsets.zero,
                    itemCount:10,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return CardItem();
                    }
                )
              ],
            ),
          ),
        )
    );
  }
}
