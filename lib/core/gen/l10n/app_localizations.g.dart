import 'dart:async';
import 'dart:core';

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
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
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
  String get currency;

  /// No description provided for @mortgageCalculator.
  ///
  /// In en, this message translates to:
  /// **'Mortgage calculator'**
  String get mortgageCalculator;

  /// No description provided for @calculateMortgage.
  ///
  /// In en, this message translates to:
  /// **'Calculate the mortgage'**
  String get calculateMortgage;

  /// No description provided for @calculateMortgageLabel.
  ///
  /// In en, this message translates to:
  /// **'Find out how much you will overpay'**
  String get calculateMortgageLabel;

  /// No description provided for @compareMortgage.
  ///
  /// In en, this message translates to:
  /// **'Compare mortgage programs'**
  String get compareMortgage;

  /// No description provided for @compareMortgageLabel.
  ///
  /// In en, this message translates to:
  /// **'Find the best deal'**
  String get compareMortgageLabel;

  /// No description provided for @loanAmount.
  ///
  /// In en, this message translates to:
  /// **'The value of property'**
  String get loanAmount;

  /// No description provided for @downpayment.
  ///
  /// In en, this message translates to:
  /// **'An initial fee'**
  String get downpayment;

  /// No description provided for @loanTerm.
  ///
  /// In en, this message translates to:
  /// **'Term (months)'**
  String get loanTerm;

  /// No description provided for @rate.
  ///
  /// In en, this message translates to:
  /// **'Rate per year'**
  String get rate;

  /// No description provided for @paymentsType.
  ///
  /// In en, this message translates to:
  /// **'Type of monthly payments'**
  String get paymentsType;

  /// No description provided for @annuity.
  ///
  /// In en, this message translates to:
  /// **'Annuite'**
  String get annuity;

  /// No description provided for @differentiated.
  ///
  /// In en, this message translates to:
  /// **'Differentiated'**
  String get differentiated;

  /// No description provided for @calculate.
  ///
  /// In en, this message translates to:
  /// **'Calculate'**
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

  /// No description provided for @result.
  ///
  /// In en, this message translates to:
  /// **'Result'**
  String get result;

  /// No description provided for @totalPayoutResult.
  ///
  /// In en, this message translates to:
  /// **'Total amount: '**
  String get totalPayoutResult;

  /// No description provided for @loanAmountResult.
  ///
  /// In en, this message translates to:
  /// **'Main debt: '**
  String get loanAmountResult;

  /// No description provided for @interestAmountResult.
  ///
  /// In en, this message translates to:
  /// **'Interest charges: '**
  String get interestAmountResult;

  /// No description provided for @interestAmountAgenda.
  ///
  /// In en, this message translates to:
  /// **'Interest charges'**
  String get interestAmountAgenda;

  /// No description provided for @loanAmountAgenda.
  ///
  /// In en, this message translates to:
  /// **'Main debt'**
  String get loanAmountAgenda;

  /// No description provided for @payoutChart.
  ///
  /// In en, this message translates to:
  /// **'Repayment schedule: '**
  String get payoutChart;

  /// No description provided for @openTable.
  ///
  /// In en, this message translates to:
  /// **'+ View full table'**
  String get openTable;

  /// No description provided for @table.
  ///
  /// In en, this message translates to:
  /// **'Table'**
  String get table;

  /// No description provided for @tableShort.
  ///
  /// In en, this message translates to:
  /// **'Briefly'**
  String get tableShort;

  /// No description provided for @tableDetail.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get tableDetail;

  /// No description provided for @tableDate.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get tableDate;

  /// No description provided for @tablePayment.
  ///
  /// In en, this message translates to:
  /// **'Payment'**
  String get tablePayment;

  /// No description provided for @tableResidue.
  ///
  /// In en, this message translates to:
  /// **'Remainder'**
  String get tableResidue;

  /// No description provided for @tableInterest.
  ///
  /// In en, this message translates to:
  /// **'Percent:'**
  String get tableInterest;

  /// No description provided for @tablePrincipal.
  ///
  /// In en, this message translates to:
  /// **'Main debt:'**
  String get tablePrincipal;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// No description provided for @compareResultFirst.
  ///
  /// In en, this message translates to:
  /// **'Option 1: '**
  String get compareResultFirst;

  /// No description provided for @compareResultSecond.
  ///
  /// In en, this message translates to:
  /// **'Option 2: '**
  String get compareResultSecond;

  /// No description provided for @compare.
  ///
  /// In en, this message translates to:
  /// **'Compare'**
  String get compare;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @variantFirst.
  ///
  /// In en, this message translates to:
  /// **'Option 1'**
  String get variantFirst;

  /// No description provided for @variantSecond.
  ///
  /// In en, this message translates to:
  /// **'Option 2'**
  String get variantSecond;

  /// No description provided for @plotFirst.
  ///
  /// In en, this message translates to:
  /// **'Repayment schedule for the first option:'**
  String get plotFirst;

  /// No description provided for @plotSecond.
  ///
  /// In en, this message translates to:
  /// **'Repayment schedule for the second option'**
  String get plotSecond;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'fr', 'it', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'fr':
      return AppLocalizationsFr();
    case 'it':
      return AppLocalizationsIt();
    case 'ru':
      return AppLocalizationsRu();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
