import 'package:flutter/material.dart';

class CalculatorTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String placeholder;

  final Widget? suffix;

  const CalculatorTextField({
    super.key,
    required this.controller,
    required this.label,
    required this.placeholder,
    this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(label),
          ),
          TextFormField(
            controller: controller,
            cursorColor: const Color.fromARGB(255, 101, 199, 134),
            decoration: InputDecoration(
              hintText: placeholder,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide:
                    const BorderSide(color: Color.fromARGB(255, 177, 183, 179)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: const BorderSide(
                  width: 2.0,
                  color: Color.fromARGB(255, 101, 199, 134),
                ),
              ),
              suffix: suffix,
            ),
          ),
        ],
      ),
    );
  }
}
