import 'package:flutter/material.dart';
import 'package:sirius_mortgage/features/settings/ui/settings_screen.dart';

class SettingButton extends StatefulWidget {
  const SettingButton({super.key});

  @override
  State<SettingButton> createState() => _SettingButtonState();
}

class _SettingButtonState extends State<SettingButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.more_vert,
        size: 30,
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const SettingsScreen(),
          ),
        );
      },
    );
  }
}
