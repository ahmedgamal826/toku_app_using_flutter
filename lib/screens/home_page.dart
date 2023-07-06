import 'package:flutter/material.dart';
import 'package:toku_app/screens/colors_page.dart';
import 'package:toku_app/screens/family_page.dart';
import 'package:toku_app/screens/numbers_page.dart';
import 'package:toku_app/screens/phrases_page.dart';

import '../components/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff4da),
      appBar: AppBar(
        backgroundColor: const Color(0xff483228),
        title: const Text(
          'Toku',
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: Column(
        children: [
          CategoryItem(
            onPresed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NumbersPage();
              }));
            },
            text: 'Numbers',
            color: const Color(0xfff8942f),
          ),
          CategoryItem(
            onPresed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FamilyPage();
              }));
            },
            text: 'Family Members',
            color: const Color(0xff527f30),
          ),
          CategoryItem(
            onPresed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ColorsPage();
              }));
            },
            text: 'Colors',
            color: const Color(0xff7c3fa0),
          ),
          CategoryItem(
            onPresed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PhrasesPage();
              }));
            },
            text: 'Phrases',
            color: const Color(0xff46a4c9),
          ),
        ],
      ),
    );
  }
}
