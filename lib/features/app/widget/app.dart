import 'package:flutter/material.dart';
import 'package:sirius_mortgage/features/app/app.dart';
import 'package:sirius_mortgage/features/theme/theme.dart';

import '../../main/ui/main_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => const AppThemeScope(
        child: AppMaterialContext(
          child: MainScreen(),
        ),
      );
}
