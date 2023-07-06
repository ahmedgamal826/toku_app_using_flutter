import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoryItem extends StatelessWidget {
  CategoryItem({super.key, this.color, this.text, this.onPresed});
  String? text;
  Color? color;
  Function()? onPresed;
  //Function()? onPresed;=VoidCallback? onPresed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPresed,
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        alignment: Alignment.centerLeft,
        height: 80,
        width: double.infinity,
        color: color,
        child: Text(
          text!,
          style: const TextStyle(
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
