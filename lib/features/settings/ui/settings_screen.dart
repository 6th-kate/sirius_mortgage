import 'package:flutter/material.dart';
import 'package:sirius_mortgage/features/settings/ui/widgets/locale_setting.dart';
import 'package:sirius_mortgage/features/settings/ui/widgets/theme_setting.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Настройки'),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              ThemeSetting(),
              LocaleSetting(),
            ],
          ),
        ),
      ),
    );
  }
}
