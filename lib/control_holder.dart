import 'package:flutter/material.dart';
import 'package:neumorphism_playground/constants.dart';
import 'controls/love_button.dart';
import 'controls/toggle_button.dart';

class ControlHolder extends StatefulWidget {
  const ControlHolder({super.key});

  @override
  State<ControlHolder> createState() => _ControlHolderState();
}

class _ControlHolderState extends State<ControlHolder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            ToggleButton(),
            SizedBox(
              height: 75.0,
            ),
            LoveButton(),
          ],
        ),
      ),
    );
  }
}
