import 'package:flutter/material.dart';

class CalculatorVIEW extends StatelessWidget {
  const CalculatorVIEW({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          // calculator display
          TextField(
            keyboardType: TextInputType.number,
            autofocus: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(30)),
                labelText: "0",
                hintText: "Enter a number",
                hintStyle: const TextStyle(
                  color: Colors.white,
                )),
          ),
          // expand
          // button
        ],
      ),
    );
  }
}
