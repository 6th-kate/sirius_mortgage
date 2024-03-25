import 'package:flutter/material.dart';

class SettingButton extends StatelessWidget {
  const SettingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.more_vert,
        size: 30,
      ),
      onPressed: () {},
    );
  }
}
