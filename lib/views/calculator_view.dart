import 'package:flutter/material.dart';

class CalculatorVIEW extends StatelessWidget {
  const CalculatorVIEW({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // calculator display
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "0",
            hintText: "Enter a number",
          ),
        ),
        // expand
        // button
      ],
    );
  }
}
