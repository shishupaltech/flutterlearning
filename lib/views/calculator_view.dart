import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorVIEW extends StatefulWidget {
  const CalculatorVIEW({super.key});

  @override
  State<CalculatorVIEW> createState() => _CalculatorVIEWState();
}

class _CalculatorVIEWState extends State<CalculatorVIEW> {
  int x = 0;
  int y = 0;
  num z = 0;

  final displayOneController = TextEditingController();
  final displayTwoController = TextEditingController();
  @override
  void initState() {
    super.initState();
    displayOneController.text = x.toString();
    displayTwoController.text = y.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(32.0),
      child: Column(
        children: [
          // calculator display
          DisplayOne(
              hint: "Enter First Number", controller: displayOneController),
          const SizedBox(
            height: 30,
          ),
          DisplayOne(
              hint: "Enter Second Number", controller: displayTwoController),
          Text(
            z.toString(),
            style: const TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
          ),
          const Spacer(),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    z = num.tryParse(displayOneController.text)! +
                        num.tryParse(displayTwoController.text)!;
                  });
                  // z = x + y;
                  print(z);
                },
                child: const Icon(CupertinoIcons.add),
              ),
              FloatingActionButton(
                onPressed: () {
                  z = x - y;
                },
                child: const Icon(CupertinoIcons.minus),
              ),
              FloatingActionButton(
                onPressed: () {
                  z = x * y;
                },
                child: const Icon(CupertinoIcons.multiply),
              ),
              FloatingActionButton(
                onPressed: () {
                  z = x / y;
                },
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
  const DisplayOne(
      {super.key, this.hint = "Enter a Number", required this.controller});
  final String? hint;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
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
