import 'package:flutter/material.dart';

import '../components/list_item.dart';
import '../model/number.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<Number> numbersList = const [
    Number(
        image: 'assets/assets/images/colors/color_black.png',
        enName: 'black',
        jpName: 'Burakku',
        audio: 'black.wav'),
    Number(
        image: 'assets/assets/images/colors/color_brown.png',
        enName: 'brown',
        jpName: 'Chairo',
        audio: 'brown.wav'),
    Number(
        image: 'assets/assets/images/colors/color_dusty_yellow.png',
        enName: 'dusty yellow',
        jpName: 'Hokori ppoi kiiro',
        audio: 'dusty yellow.wav'),
    Number(
        image: 'assets/assets/images/colors/color_gray.png',
        enName: 'gray',
        jpName: 'Gure',
        audio: 'gray.wav'),
    Number(
        image: 'assets/assets/images/colors/color_green.png',
        enName: 'green',
        jpName: 'Midori',
        audio: 'green.wav'),
    Number(
        image: 'assets/assets/images/colors/color_red.png',
        enName: 'red',
        jpName: 'Aka',
        audio: 'red.wav'),
    Number(
        image: 'assets/assets/images/colors/color_green.png',
        enName: 'green',
        jpName: 'Midori',
        audio: 'green.wav'),
    Number(
        image: 'assets/assets/images/colors/color_white.png',
        enName: 'white',
        jpName: 'Shiroi',
        audio: 'white.wav'),
    Number(
        image: 'assets/assets/images/colors/yellow.png',
        enName: 'yellow',
        jpName: 'Kiiro',
        audio: 'yellow.wav'),
    Number(
        image: 'assets/assets/images/colors/color_white.png',
        enName: 'white',
        jpName: 'Shiroi',
        audio: 'white.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff453024),
        title: const Text('Colors', style: TextStyle(fontSize: 18)),
      ),
      //this way by using ListView.builder
      body: ListView.builder(
        itemCount: numbersList.length,
        itemBuilder: (context, index) {
          return Item(
              itemType: 'colors',
              number: numbersList[index],
              color: const Color(0xff7c3fa0));
        },

        // children: getList(numbersList),
      ),
    );
  }
}
