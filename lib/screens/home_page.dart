import 'package:flutter/material.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/family_member.dart';
import 'package:toku/screens/phrases_page.dart';
import '../components/category_item.dart';
import 'numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            resizeToAvoidBottomInset: false,

      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text('Toku'),
      ),
      body: Column(
        children: [
          Category(
            destination: const NumbersPage(),
            color: Colors.orange,
            text: 'Numbers',
          ),
          Category(
            destination: const FamilyMember(),
            color: const Color.fromARGB(255, 13, 148, 24),
            text: 'Family Members',
          ),
          Category(
            destination: const ColorPage(),
            color: const Color.fromARGB(255, 131, 21, 158),
            text: 'Color',
          ),
          Category(
            destination: const PhrasesPage(),
            color: const Color.fromARGB(255, 109, 183, 253),
            text: 'Phrases',
          ),
        ],
      ),
    );
  }
}
