import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/model/phrases.dart';

// ignore: must_be_immutable
class PhrasesItem extends StatelessWidget {
  const PhrasesItem({
    super.key,
    required this.phrases,
    required this.color,
    required this.itemType,
  });
  final Phrases phrases;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: const Color(0xff46a4c9),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                phrases.enName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Text(
                phrases.jpName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              try {
                AudioCache player =
                    AudioCache(prefix: 'assets/assets/sounds/$itemType/');
                player.play(phrases.audio);
              } catch (ex) {
                // ignore: avoid_print
                print('ex');
              }
            },
            icon: const Icon(
              Icons.play_arrow,
              size: 30,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
