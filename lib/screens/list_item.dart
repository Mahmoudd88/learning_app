import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:toku/models/models.dart';

class ListItem extends StatelessWidget {
  const ListItem({Key? key, required this.number, required this.color})
      : super(key: key);
  final Item number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: double.infinity,
      color: color,
      child: Row(
        children: [
          Container(
            color: const Color.fromARGB(255, 252, 239, 243),
            child: Image.asset(number.image!),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                Text(
                  number.enName,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: () async {
                try {
                  final player = AudioPlayer();
                  await player.play(AssetSource(number.sound));
                } catch (ex) {
                  print(ex);
                }
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 28,
              ))
        ],
      ),
    );
  }
}

class PhraseItem extends StatelessWidget {
  const PhraseItem({Key? key, required this.number, required this.color})
      : super(key: key);
  final Item number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                Text(
                  number.enName,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: () async {
                try {
                  final player = AudioPlayer();
                  await player.play(AssetSource(number.sound));
                } catch (ex) {
                  print(ex);
                }
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 28,
              ))
        ],
      ),
    );
  }
}
