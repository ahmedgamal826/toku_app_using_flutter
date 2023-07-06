import 'package:flutter/material.dart';

import '../components/list_item.dart';
import '../model/number.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});
  final List<Number> numbersList = const [
    Number(
        image: 'assets/assets/images/family_members/family_father.png',
        enName: 'Father',
        jpName: 'Chichioya',
        audio: 'father.wav'),
    Number(
        image: 'assets/assets/images/family_members/family_daughter.png',
        enName: 'daughter',
        jpName: 'musume',
        audio: 'daughter.wav'),
    Number(
        image: 'assets/assets/images/family_members/family_grandfather.png',
        enName: 'grand father',
        jpName: 'Ojīsan',
        audio: 'grand father.wav'),
    Number(
        image: 'assets/assets/images/family_members/family_mother.png',
        enName: 'mother',
        jpName: 'Hahaoya',
        audio: 'mother.wav'),
    Number(
        image: 'assets/assets/images/family_members/family_grandmother.png',
        enName: 'grand mother',
        jpName: 'sobo',
        audio: 'grand mother.wav'),
    Number(
        image: 'assets/assets/images/family_members/family_older_brother.png',
        enName: 'old brother',
        jpName: 'nisan',
        audio: 'older bother.wav'),
    Number(
        image: 'assets/assets/images/family_members/family_older_sister.png',
        enName: 'old sister',
        jpName: 'ane',
        audio: 'older sister.wav'),
    Number(
        image: 'assets/assets/images/family_members/family_son.png',
        enName: 'son',
        jpName: 'Musuko',
        audio: 'son.wav'),
    Number(
        image: 'assets/assets/images/family_members/family_younger_brother.png',
        enName: 'younger brother',
        jpName: 'Otōto',
        audio: 'younger brohter.wav'),
    Number(
        image: 'assets/assets/images/family_members/family_younger_sister.png',
        enName: 'younger sister',
        jpName: 'Imōto',
        audio: 'younger sister.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff453024),
        title: const Text('Family Members', style: TextStyle(fontSize: 18)),
      ),
      //this way by using ListView.builder
      body: ListView.builder(
        itemCount: numbersList.length,
        itemBuilder: (context, index) {
          return Item(
              itemType: 'family_members',
              number: numbersList[index],
              color: const Color(0xff527f30));
        },

        // children: getList(numbersList),
      ),
    );
  }
}
