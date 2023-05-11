import 'package:flutter/material.dart';

import '../models/models.dart';
import 'list_item.dart';

class FamilyMember extends StatelessWidget {
  const FamilyMember({Key? key}) : super(key: key);
  final List<Item> members = const [
    Item(
        sound: 'assets/sounds/family_members/father.wav',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Chichioya',
        enName: 'Father'),
    Item(
        sound: 'assets/sounds/family_members/daughter.wav',
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Musume',
        enName: 'Daughter'),
    Item(
        sound: 'assets/sounds/family_members/grand father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Ojīsan',
        enName: 'Garnd father'),
    Item(
        sound: 'assets/sounds/family_members/grand mother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'O bāchan',
        enName: 'Grand mother'),
    Item(
        sound: 'assets/sounds/family_members/mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'mother'),
    Item(
        sound: 'assets/sounds/family_members/older bother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Toshiue no kyōdai',
        enName: 'older brother'),
    Item(
        sound: 'assets/sounds/family_members/older sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane',
        enName: 'older sister'),
    Item(
        sound: 'assets/sounds/family_members/son.wav',
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'son'),
    Item(
        sound: 'assets/sounds/family_members/younger brother.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Otōto',
        enName: 'younger brother'),
    Item(
        sound: 'assets/sounds/family_members/younger sister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Imōto',
        enName: 'younger sister'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text('Family member'),
      ),
      body: ListView.builder(
          itemCount: members.length,
          itemBuilder: (context, index) {
            return ListItem(
              number: members[index],
              color: const Color.fromARGB(255, 13, 148, 24),
            );
          }),
    );
  }
}
