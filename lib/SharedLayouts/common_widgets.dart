import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

AnimatedButton animatedButton(
  String textVariable, {
  dynamic onPressed,
  Color borderColor = Colors.black,
  double width = 110,
  double height = 50,
  backgroundColor = Colors.black,
  textStyle = const TextStyle(
    color: Colors.white,
    fontSize: 30,
  ),
  borderWidth = 0,
}) {
  return AnimatedButton(
    borderWidth: borderWidth,
    textStyle: textStyle,
    height: height,
    animatedOn: AnimatedOn.onHover,
    borderRadius: 50,
    width: width,
    transitionType: TransitionType.TOP_CENTER_ROUNDER,
    text: textVariable,
    selectedTextColor: Colors.black,
    onPress: onPressed,
    backgroundColor: backgroundColor,
    animationDuration: const Duration(milliseconds: 800),
    borderColor: borderColor,
  );
}

TextButton titleButton() {
  return TextButton(
    onPressed: () {},
    child: const Text(
      "Group 5 Project",
      style: TextStyle(
        fontSize: 30,
        color: Colors.white,
      ),
    ),
  );
}

Widget outlinedButton({
  required Widget label,
  required Icon icon,
  required Color backgroundColor,
  required VoidCallback onPressed,
}) {
  return OutlinedButton.icon(
    style: OutlinedButton.styleFrom(
      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
      backgroundColor: backgroundColor,
      fixedSize: const Size(310, 70),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      elevation: 10,
      textStyle: const TextStyle(fontSize: 40),
    ),
    onPressed: onPressed,
    icon: icon,
    label: label,
  );
}
