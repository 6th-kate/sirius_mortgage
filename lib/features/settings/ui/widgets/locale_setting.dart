import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sirius_mortgage/features/settings/ui/widgets/setting_template.dart';

import '../../../../core/core.dart';

class LocaleSetting extends StatelessWidget {
  const LocaleSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingTemplate(
      title: 'Язык',
      suffixChild: FilledButton(
        onPressed: () {
          onLanguageSheetOpen(context);
        },
        child: Text('RU'),
      ),
    );
  }

  void onLanguageSheetOpen(BuildContext context) {
    showCupertinoModalBottomSheet(
      context: context,
      expand: false,
      builder: (context) {
        return SizedBox(
          height: (AppLocalizations.supportedLocales.length + 2) * 50,
          child: Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  ...AppLocalizations.supportedLocales,
                  Locale('tat'),
                  Locale('en')
                ]
                    .map(
                      (locale) => TextButton(
                        onPressed: () {},
                        child: Text(
                          locale.languageCode,
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        );
      },
    );
  }
}
