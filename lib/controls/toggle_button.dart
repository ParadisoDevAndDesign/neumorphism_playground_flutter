import 'package:flutter/material.dart';

class ToggleButton extends StatefulWidget {
  const ToggleButton({super.key});

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  void onChanged() {}
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Switch(value: false, onChanged: (value) {}),
        // Container(
        //   width: 100,
        //   height: 100,
        //   color: Colors.amber,
        // ),
      ],
    );
  }
}
