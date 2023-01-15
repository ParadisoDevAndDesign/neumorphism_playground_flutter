import 'package:flutter/material.dart';
import 'package:neumorphism_playground/constants.dart';
import 'package:neumorphism_playground/widgets/display_image.dart';
import 'widgets/reusable_button.dart';
import 'widgets/toggle_button.dart';

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
          children: [
            DisplayImage(),
            SizedBox(
              height: 75.0,
            ),
            ToggleButton(),
            SizedBox(
              height: 75.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ReusableButton(
                  iconData: Icons.favorite,
                  colourOn: Colors.pink.shade500,
                  colourOff: Colors.pink.shade100,
                ),
                SizedBox(
                  width: 25,
                ),
                ReusableButton(
                  iconData: Icons.star,
                  colourOn: Colors.yellow.shade400,
                  colourOff: Colors.yellow.shade100,
                ),
                SizedBox(
                  width: 25,
                ),
                ReusableButton(
                  iconData: Icons.person_add_alt_rounded,
                  colourOn: Colors.blue.shade500,
                  colourOff: Colors.blue.shade100,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
