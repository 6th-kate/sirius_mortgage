import 'package:flutter/material.dart';

import 'core/di/di.dart';
import 'features/app/widget/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const App());
}
