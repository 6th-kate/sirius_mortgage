import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'firebase_setup_service.dart';

@module
abstract class RegisterModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @preResolve
  Future<FirebaseSetupService> get fireService => FirebaseSetupService.init();
}
