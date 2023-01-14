import 'package:flutter/material.dart';
import 'package:neumorphism_playground/constants.dart';

class LoveButton extends StatefulWidget {
  const LoveButton({super.key});

  @override
  State<LoveButton> createState() => _LoveButtonState();
}

class _LoveButtonState extends State<LoveButton> {
  bool isButtonPressed = false;

  void onButtonPress() {
    setState(() {
      if (isButtonPressed == false) {
        isButtonPressed = true;
      } else if (isButtonPressed == true) {
        isButtonPressed = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: isButtonPressed
              ? BoxDecoration(
                  color: kMainColor,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xFF7B00B6),
                      offset: Offset(6, 6),
                      blurRadius: 15,
                      spreadRadius: 2,
                    ),
                    BoxShadow(
                      color: Color(0xFF440065),
                      offset: Offset(-5, -5),
                      blurRadius: 15,
                      spreadRadius: 2,
                    ),
                  ],
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: kDarkToLightPurple,
                    stops: [
                      0,
                      0.1,
                      0.3,
                      1,
                    ],
                  ),
                )
              : BoxDecoration(
                  color: kMainColor,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xFF440065),
                      offset: Offset(6, 6),
                      blurRadius: 15,
                      spreadRadius: 2,
                    ),
                    BoxShadow(
                      color: Color(0xFF7B00B6),
                      offset: Offset(-5, -5),
                      blurRadius: 15,
                      spreadRadius: 2,
                    ),
                  ],
                ),
          child: GestureDetector(
            onTap: onButtonPress,
            child: Icon(
              Icons.favorite,
              color:
                  isButtonPressed ? Colors.pink.shade500 : Colors.pink.shade100,
              size: 50.0,
            ),
          ),
        ),
      ],
    );
  }
}
