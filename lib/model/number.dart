import 'package:flutter/cupertino.dart';

class Number {
  final String? image;
  final String jpName;
  final String enName;
  final String audio;

  const Number(
      {required this.audio,
      @required this.image,
      required this.enName,
      required this.jpName});
}
