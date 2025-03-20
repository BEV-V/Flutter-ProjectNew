import 'package:flutter/material.dart';

class Box extends StatelessWidget {

  final Color colour;
  final Widget cardChild;
  final VoidCallback onPress;


  const Box({super.key,  required this.colour, required this.cardChild, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.all(15.0),
        height: 200.0,
        child: cardChild,
      ),
    );
  }
}
