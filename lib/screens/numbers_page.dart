import 'package:flutter/material.dart';
import 'package:toku_app/components/list_item.dart';

import '../model/number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  //create list of numbers
  final List<Number> numbersList = const [
    Number(
        image: 'assets/assets/images/numbers/number_one.png',
        enName: 'one',
        jpName: 'ichi',
        audio: 'number_one_sound.mp3'),
    Number(
        image: 'assets/assets/images/numbers/number_two.png',
        enName: 'two',
        jpName: 'Ni',
        audio: 'number_two_sound.mp3'),
    Number(
        image: 'assets/assets/images/numbers/number_three.png',
        enName: 'three',
        jpName: 'San',
        audio: 'number_three_sound.mp3'),
    Number(
        image: 'assets/assets/images/numbers/number_four.png',
        enName: 'four',
        jpName: 'Shi',
        audio: 'number_four_sound.mp3'),
    Number(
        image: 'assets/assets/images/numbers/number_five.png',
        enName: 'five',
        jpName: 'Go',
        audio: 'number_five_sound.mp3'),
    Number(
        image: 'assets/assets/images/numbers/number_six.png',
        enName: 'six',
        jpName: 'Roku',
        audio: 'number_six_sound.mp3'),
    Number(
        image: 'assets/assets/images/numbers/number_seven.png',
        enName: 'seven',
        jpName: 'Sebun',
        audio: 'number_seven_sound.mp3'),
    Number(
        image: 'assets/assets/images/numbers/number_eight.png',
        enName: 'eight',
        jpName: 'Hachi',
        audio: 'number_eight_sound.mp3'),
    Number(
        image: 'assets/assets/images/numbers/number_nine.png',
        enName: 'nine',
        jpName: 'Kyū',
        audio: 'number_nine_sound.mp3'),
    Number(
        image: 'assets/assets/images/numbers/number_ten.png',
        enName: 'ten',
        jpName: 'Jū',
        audio: 'number_ten_sound.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff453024),
        title: const Text(
          'Numbers',
          style: TextStyle(fontSize: 18),
        ),
      ),
      //this way by using ListView.builder
      body: ListView.builder(
        itemCount: numbersList.length,
        itemBuilder: (context, index) {
          return Item(
            itemType: 'numbers',
            number: numbersList[index],
            color: const Color(0xfff8942f),
          );
        },

        // children: getList(numbersList),
      ),
    );
  }
//================================================================
//you can use for loop to show the items in the screen by using this
// // we create methode or class its name is getlist which is return type List<Widget>,
// //then we create an empty array to make a loop and add items to it;
//
//
//   List<Widget> getList(List<Number> numbers) {
//     List<Widget> itemsList = [];
//     for (int i = 0; i < numbers.length; i++) {
//       itemsList.add(Item(number: numbers[i]));
//     }
//     return itemsList;
//   }/
}
