import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/model/number.dart';

class Item extends StatelessWidget {
  const Item(
      {super.key,
      required this.number,
      required this.color,
      required this.itemType});
  final Color color;
  final Number number;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: color,
      child: Row(
        children: [
          Container(
              height: 80,
              color: const Color(0xfffef3d8),
              child: Image.asset(number.image!)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  number.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  number.enName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              //this way you can handle th exeption by using try and catch bloco
              try {
                AudioCache player =
                    AudioCache(prefix: 'assets/assets/sounds/$itemType/');
                player.play(number.audio);
              } catch (ex) {
                // ignore: avoid_print
                print('ex');
              }
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
