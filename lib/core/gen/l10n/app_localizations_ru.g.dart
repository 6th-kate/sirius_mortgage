import 'app_localizations.g.dart';

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get currency => 'RUB';

  @override
  String get mortageCalculator => 'Ипотечный калькулятор';

  @override
  String get calculateMortage => 'Рассчитать ипотеку';

  @override
  String get loanAmount => 'Стоимость имущества';

  @override
  String get downpayment => 'Первоначальный взнос';

  @override
  String get loanTerm => 'Срок (месяцев)';

  @override
  String get rate => 'Ставка в год';

  @override
  String get paymentsType => 'Тип ежемесячных платежей';

  @override
  String get annuity => 'Аннуитетные';

  @override
  String get differentiated => 'Дифференцированные';

  @override
  String get calculate => 'Рассчитать';
}
