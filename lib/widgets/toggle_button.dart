import 'package:flutter/material.dart';
import 'package:neumorphism_playground/constants.dart';

class ToggleButton extends StatefulWidget {
  const ToggleButton({super.key});

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool isToggled = false;

  void onToggle() {
    setState(() {
      isToggled = isToggled ? false : true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: onToggle,
          child: Container(
            height: 80,
            width: 175,
            decoration: BoxDecoration(
              color: isToggled ? Color(0xFFB026FF) : Color(0xFF440065),
              borderRadius: const BorderRadius.all(
                Radius.elliptical(40, 40),
              ),
              border: Border.all(
                color: Color(0xFF7B00B6),
                style: BorderStyle.solid,
                width: 5.0,
              ),
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
              gradient: RadialGradient(
                radius: isToggled ? 1.75 : 1.25,
                center: Alignment.center,
                colors: isToggled ? kLightToDarkNeonPurple : kLightToDarkPurple,
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  left: isToggled ? 100 : 8,
                  child: Container(
                    height: 55,
                    width: 55,
                    padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                    decoration: const BoxDecoration(
                      color: Color(0xFF7B00B6),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF3C0052),
                          offset: Offset(2, 2),
                          blurRadius: 4,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
