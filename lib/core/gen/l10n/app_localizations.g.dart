import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.g.dart';
import 'app_localizations_fr.g.dart';
import 'app_localizations_it.g.dart';
import 'app_localizations_ru.g.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.g.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('fr'),
    Locale('it'),
    Locale('ru')
  ];

  /// No description provided for @currency.
  ///
  /// In ru, this message translates to:
  /// **'RUB'**
  String get currency;

  /// No description provided for @mortgageCalculator.
  ///
  /// In ru, this message translates to:
  /// **'Ипотечный калькулятор'**
  String get mortgageCalculator;

  /// No description provided for @calculateMortgage.
  ///
  /// In ru, this message translates to:
  /// **'Рассчитать ипотеку'**
  String get calculateMortgage;

  /// No description provided for @calculateMortgageLabel.
  ///
  /// In ru, this message translates to:
  /// **'Узнайте, сколько переплатите'**
  String get calculateMortgageLabel;

  /// No description provided for @compareMortgage.
  ///
  /// In ru, this message translates to:
  /// **'Сравнить программы'**
  String get compareMortgage;

  /// No description provided for @compareMortgageLabel.
  ///
  /// In ru, this message translates to:
  /// **'Найдите выгодный вариант'**
  String get compareMortgageLabel;

  /// No description provided for @loanAmount.
  ///
  /// In ru, this message translates to:
  /// **'Стоимость имущества'**
  String get loanAmount;

  /// No description provided for @downpayment.
  ///
  /// In ru, this message translates to:
  /// **'Первоначальный взнос'**
  String get downpayment;

  /// No description provided for @loanTerm.
  ///
  /// In ru, this message translates to:
  /// **'Срок (месяцев)'**
  String get loanTerm;

  /// No description provided for @rate.
  ///
  /// In ru, this message translates to:
  /// **'Ставка в год'**
  String get rate;

  /// No description provided for @paymentsType.
  ///
  /// In ru, this message translates to:
  /// **'Тип ежемесячных платежей'**
  String get paymentsType;

  /// No description provided for @annuity.
  ///
  /// In ru, this message translates to:
  /// **'Аннуитетные'**
  String get annuity;

  /// No description provided for @differentiated.
  ///
  /// In ru, this message translates to:
  /// **'Дифференцированные'**
  String get differentiated;

  /// No description provided for @calculate.
  ///
  /// In ru, this message translates to:
  /// **'Рассчитать'**
  String get calculate;

  /// No description provided for @langName.
  ///
  /// In ru, this message translates to:
  /// **'Русский'**
  String get langName;

  /// No description provided for @shortLangName.
  ///
  /// In ru, this message translates to:
  /// **'RUS'**
  String get shortLangName;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'fr', 'it', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'fr': return AppLocalizationsFr();
    case 'it': return AppLocalizationsIt();
    case 'ru': return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
