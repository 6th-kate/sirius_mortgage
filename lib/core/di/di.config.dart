// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i3;
import 'package:sirius_mortgage/core/di/firebase_setup_service.dart' as _i4;
import 'package:sirius_mortgage/core/di/settings_load_service.dart' as _i7;
import 'package:sirius_mortgage/core/di/shared_module.dart' as _i26;
import 'package:sirius_mortgage/features/calculator/domain/model/calculator_inteface.dart'
    as _i16;
import 'package:sirius_mortgage/features/calculator/domain/mortgage_calculator.dart'
    as _i17;
import 'package:sirius_mortgage/features/count/data/count_repository_impl.dart'
    as _i21;
import 'package:sirius_mortgage/features/count/domain/calculator_bloc/calculator_bloc.dart'
    as _i23;
import 'package:sirius_mortgage/features/count/domain/count_repository.dart'
    as _i20;
import 'package:sirius_mortgage/features/favorites/data/favorites_repository_impl.dart'
    as _i19;
import 'package:sirius_mortgage/features/favorites/data/history_repository_impl.dart'
    as _i10;
import 'package:sirius_mortgage/features/favorites/domain/favorites_bloc/favorite_change_notifier.dart'
    as _i22;
import 'package:sirius_mortgage/features/favorites/domain/favorites_bloc/favorites_repository.dart'
    as _i18;
import 'package:sirius_mortgage/features/favorites/domain/history_domain/history_change_notifier.dart'
    as _i24;
import 'package:sirius_mortgage/features/favorites/domain/history_domain/history_repository.dart'
    as _i9;
import 'package:sirius_mortgage/features/settings/data/currency_repository_impl.dart'
    as _i12;
import 'package:sirius_mortgage/features/settings/data/locale_repository_impl.dart'
    as _i6;
import 'package:sirius_mortgage/features/settings/data/theme_repository_impl.dart'
    as _i15;
import 'package:sirius_mortgage/features/settings/domain/currency/currency_bloc/currency_bloc.dart'
    as _i13;
import 'package:sirius_mortgage/features/settings/domain/currency/currency_repository.dart'
    as _i11;
import 'package:sirius_mortgage/features/settings/domain/locale/locale_bloc/locale_bloc.dart'
    as _i8;
import 'package:sirius_mortgage/features/settings/domain/locale/locale_repository.dart'
    as _i5;
import 'package:sirius_mortgage/features/settings/domain/theme/theme_bloc/theme_bloc.dart'
    as _i25;
import 'package:sirius_mortgage/features/settings/domain/theme/theme_repository.dart'
    as _i14;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i3.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    await gh.factoryAsync<_i4.FirebaseSetupService>(
      () => registerModule.fireService,
      preResolve: true,
    );
    gh.factory<_i5.LocaleRepository>(() => _i6.LocaleRepositoryImpl());
    gh.factory<_i7.SettingLoadService>(
        () => _i7.SettingLoadService.init(gh<_i3.SharedPreferences>()));
    gh.factory<_i8.LocaleBloc>(
        () => _i8.LocaleBloc(gh<_i5.LocaleRepository>()));
    gh.factory<_i9.IHistoryRepository>(
        () => _i10.HistoryRepository(gh<_i3.SharedPreferences>()));
    gh.factory<_i11.CurrencyRepository>(() => _i12.CurrencyRepositoryImpl());
    gh.factory<_i13.CurrencyBloc>(
        () => _i13.CurrencyBloc(gh<_i11.CurrencyRepository>()));
    gh.factory<_i14.ThemeRepository>(() => _i15.ThemeRepositoryImpl());
    gh.factory<_i16.ICalculator>(() => const _i17.MortgageCalculator());
    gh.factory<_i18.IFavoritesRepository>(
        () => _i19.FavoritesRepository(gh<_i3.SharedPreferences>()));
    gh.factory<_i20.CountRepository>(
        () => _i21.CountRepositoryImpl(gh<_i16.ICalculator>()));
    gh.factory<_i22.FavoriteNotifier>(() =>
        _i22.FavoriteNotifier(repository: gh<_i18.IFavoritesRepository>()));
    gh.factory<_i23.CalculatorBloc>(() => _i23.CalculatorBloc(
          gh<_i20.CountRepository>(),
          gh<_i9.IHistoryRepository>(),
        ));
    gh.factory<_i24.HistoryNotifier>(
        () => _i24.HistoryNotifier(repository: gh<_i9.IHistoryRepository>()));
    gh.factory<_i25.ThemeBloc>(
        () => _i25.ThemeBloc(gh<_i14.ThemeRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i26.RegisterModule {}
