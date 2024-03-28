import 'package:flutter/material.dart';

class SettingTemplate extends StatelessWidget {
  final String title;
  final Widget suffixChild;

  const SettingTemplate({
    super.key,
    required this.title,
    required this.suffixChild,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          suffixChild,
        ],
      ),
    );
  }
}
