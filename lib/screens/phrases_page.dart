import 'package:flutter/material.dart';
import 'package:toku_app/components/phrase_item.dart';
import 'package:toku_app/model/phrases.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<Phrases> phraseList = const [
    Phrases(
        enName: 'dont forget to subscribe',
        jpName: 'Kōdoku suru koto o wasurenaide kudasai',
        audio: 'dont_forget_to_subscribe.wav'),
    Phrases(
        enName: 'are_you_coming',
        jpName: 'Āru _ you _ kamingu',
        audio: 'are_you_coming.wav'),
    Phrases(
        enName: 'how_are_you_feeling',
        jpName: 'Go kibun wa ikagadesu ka',
        audio: 'how_are_you_feeling.wav'),
    Phrases(
        enName: 'i_love_anime',
        jpName: 'Watashi wa anime ga daisukidesu',
        audio: 'i_love_anime.wav'),
    Phrases(
        enName: 'i_love_programming',
        jpName: 'Watashi wa puroguramingu ga daisukidesu',
        audio: 'i_love_programming.wav'),
    Phrases(
        enName: 'what_is_your_name',
        jpName: 'Namae wa nandesu ka',
        audio: 'what_is_your_name.wav'),
    Phrases(
        enName: 'where_are_you_going',
        jpName: 'Doko ni iku no',
        audio: 'where_are_you_going.wav'),
    Phrases(
        enName: 'yes_im_coming',
        jpName: 'Yes _ im _ kamingu',
        audio: 'yes_im_coming.wav'),
    Phrases(
        enName: 'yes_im_coming',
        jpName: 'Hai, kimasu',
        audio: 'yes_im_coming.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff453024),
        title: const Text(
          'Phrases ',
          style: TextStyle(fontSize: 18),
        ),
      ),
      // body: Column(
      //   children: [
      //     PhrasesItem(
      //         enName: 'dont forget to subscribe',
      //         jpName: 'Kōdoku suru koto o wasurenaide kudasai'),
      //   ],
      // ),
      body: ListView.builder(
          itemCount: phraseList.length,
          itemBuilder: (context, index) {
            return PhrasesItem(
              itemType: 'phrases',
              phrases: phraseList[index],
              color: const Color(0xff46a4c9),
            );
          }),
    );
  }
}
