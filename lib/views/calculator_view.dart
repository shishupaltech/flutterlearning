import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorVIEW extends StatelessWidget {
  const CalculatorVIEW({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(32.0),
      child: Column(
        children: [
          // calculator display
          const DisplayOne(hint: "Enter First Number"),
          const SizedBox(
            height: 30,
          ),
          const DisplayOne(hint: "Enter Second Number"),
          const Text(
            "0",
            style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
          ),
          const Spacer(),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                onPressed: () {},
                child: const Icon(CupertinoIcons.add),
              ),
              FloatingActionButton(
                onPressed: () {},
                child: const Icon(CupertinoIcons.minus),
              ),
              FloatingActionButton(
                onPressed: () {},
                child: const Icon(CupertinoIcons.multiply),
              ),
              FloatingActionButton(
                onPressed: () {},
                child: const Icon(CupertinoIcons.divide),
              ),
            ],
          )
          // expand
          // button
        ],
      ),
    );
  }
}

class DisplayOne extends StatelessWidget {
  const DisplayOne({super.key, this.hint = "Enter a Number"});
  final String? hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
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
          hintText: hint,
          hintStyle: const TextStyle(
            color: Colors.white,
          )),
    );
  }
}
