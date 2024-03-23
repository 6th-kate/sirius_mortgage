import 'package:flutter/material.dart';

class SuffixButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const SuffixButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 8.0),
      child: FilledButton(
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
