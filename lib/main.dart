import 'package:flutter/material.dart';
import 'package:neumorphism_playground/control_holder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neumorphism Playground',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(backgroundColor: Colors.grey.shade400),
      home: const ControlHolder(),
    );
  }
}


// Icon(
//         Icons.favorite,
//         color: Colors.pink.shade400,
//         size: 50.0,
//       ),

