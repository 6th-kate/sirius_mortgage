import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sirius_mortgage/features/locale/locale.dart';
import 'package:sirius_mortgage/features/settings/domain/locale/locale_bloc/locale_bloc.dart';
import 'package:sirius_mortgage/features/settings/ui/widgets/setting_template.dart';

class LocaleSetting extends StatelessWidget {
  const LocaleSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingTemplate(
      title: AppLocaleScope.of(context).language,
      suffixChild: FilledButton(
        onPressed: () {
          onLanguageSheetOpen(context);
        },
        child: Text(AppLocaleScope.localeOf(context).languageCode),
      ),
    );
  }

  void onLanguageSheetOpen(BuildContext context) {
    showCupertinoModalBottomSheet(
      context: context,
      expand: false,
      builder: (context) {
        return SafeArea(
          child: SizedBox(
            height: AppLocaleScope.supportedLocalesOf(context).length * 50,
            child: Scaffold(
              body: Column(
                children: AppLocaleScope.supportedLocalesOf(context)
                    .map(
                      (locale) => SizedBox(
                        height: 50,
                        child: TextButton(
                          onPressed: () {
                            BlocProvider.of<LocaleBloc>(context).add(
                              LocaleEvent.localeChanged(
                                locale.languageCode,
                              ),
                            );
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            locale.languageCode,
                          ),
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
