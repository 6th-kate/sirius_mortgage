part of 'locale_bloc.dart';

@freezed
class LocaleEvent with _$LocaleEvent {
  factory LocaleEvent.localeChanged(String languageCode) = LocaleChanged;
  factory LocaleEvent.needLocaleLoad() = NeedLocaleLoad;
  factory LocaleEvent.reload(SimpleResponse<String> response) = LocaleReload;
}
