import 'package:flutter/material.dart';
import '../models/models.dart';
import 'list_item.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({Key? key}) : super(key: key);
  final List<Item> colors = const [
    Item(
        sound: 'assets/sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: 'Kuro',
        enName: 'black'),
    Item(
        sound: 'assets/sounds/colors/brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'brown'),
    Item(
        sound: 'assets/sounds/colors/dusty brown.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Hokori ppoi kiiro',
        enName: 'dusty yellow'),
    Item(
        sound: 'assets/sounds/colors/gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Gurē',
        enName: 'gray'),
    Item(
        sound: 'assets/sounds/colors/green.wav',
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'green'),
    Item(
        sound: 'assets/sounds/colors/red.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'red'),
    Item(
        sound: 'assets/sounds/colors/white.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: 'Shiro',
        enName: 'wihte'),
    Item(
        sound: 'assets/sounds/colors/yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jpName: 'Kiiro',
        enName: 'yellow'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Text('Colors'),
        ),
        body: ListView.builder(
            itemCount: colors.length,
            itemBuilder: (context, index) {
              return ListItem(
                  number: colors[index],
                  color: const Color.fromARGB(255, 131, 21, 158));
            }));
  }
}
