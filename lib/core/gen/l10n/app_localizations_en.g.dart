import 'app_localizations.g.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get currency => 'Rub';

  @override
  String get mortgageCalculator => 'Mortgage calculator';

  @override
  String get calculateMortgage => 'Calculate the mortgage';

  @override
  String get calculateMortgageLabel => 'Find out how much you will overpay';

  @override
  String get compareMortgage => 'Compare mortgage programs';

  @override
  String get compareMortgageLabel => 'Find the best deal';

  @override
  String get loanAmount => 'The value of property';

  @override
  String get downpayment => 'An initial fee';

  @override
  String get loanTerm => 'Term (months)';

  @override
  String get rate => 'Rate per year';

  @override
  String get paymentsType => 'Type of monthly payments';

  @override
  String get annuity => 'Annuite';

  @override
  String get differentiated => 'Differentiated';

  @override
  String get calculate => 'Calculate';
}
