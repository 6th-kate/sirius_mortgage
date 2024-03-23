import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SuffixButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  SuffixButton({super.key, required this.text, required this.onPressed});

  // TODO("fix, apply theme")
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    backgroundColor: Color(0xFFAC76FF),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: TextButton(
        style: flatButtonStyle,
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
