import 'package:flutter/material.dart';
import 'package:toku/models/models.dart';
import 'package:toku/screens/list_item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);
  final List<Item> phrases = const [
    Item(
      jpName: 'Kimasu ka?',
      enName: 'Are you coming?',
      sound: 'assets/sounds/phrases/are_you_coming.wav',
    ),
    Item(
      jpName: 'Hai, ikimasu',
      enName: 'Yes iam coming',
      sound: 'assets/sounds/phrases/yes_im_coming.wav',
    ),
    Item(
      jpName: 'Watashi wa puroguramingu ga daisukidesu',
      enName: 'I love programming',
      sound: 'assets/sounds/phrases/i_love_programming.wav',
    ),
    Item(
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'I love anime',
      sound: 'assets/sounds/phrases/i_love_anime.wav',
    ),
    Item(
      jpName: 'Namae wa nandesu ka ?',
      enName: 'What is your name ?',
      sound: 'assets/sounds/phrases/what_is_your_name.wav',
    ),
    Item(
      jpName: 'Doko ni iku no?',
      enName: 'Where are you going ?',
      sound: 'assets/sounds/phrases/where_are_you_going.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text('Phrases'),
      ),
      body: ListView.builder(
          itemCount: phrases.length,
          itemBuilder: (context, index) {
            return PhraseItem(
                number: phrases[index],
                color: const Color.fromARGB(255, 109, 183, 253));
          }),
    );
  }
}
