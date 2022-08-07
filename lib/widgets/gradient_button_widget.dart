import 'package:flutter/material.dart';

class GradientButtonWidget extends StatelessWidget {
  final String buttonText;
  final List<Color> buttonColors;
  final Color textColor;
  final VoidCallback onPressed;

  const GradientButtonWidget({
    Key? key,
    required this.buttonText,
    required this.buttonColors,
    this.textColor = Colors.white,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: buttonColors),
          borderRadius: BorderRadius.circular(30)),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            primary: Colors.transparent, shadowColor: Colors.transparent),
        child: Text(
          buttonText,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
