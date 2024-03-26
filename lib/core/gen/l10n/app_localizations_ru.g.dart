import 'app_localizations.g.dart';

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get currency => 'RUB';

  @override
  String get mortgageCalculator => 'Ипотечный калькулятор';

  @override
  String get calculateMortgage => 'Рассчитать ипотеку';

  @override
  String get calculateMortgageLabel => 'Узнайте, сколько переплатите';

  @override
  String get compareMortgage => 'Сравнить программы';

  @override
  String get compareMortgageLabel => 'Найдите выгодный вариант';

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

  @override
  String get result => 'Результат';

  @override
  String get totalPayoutResult => 'Общая сумма: ';

  @override
  String get loanAmountResult => 'Основной долг: ';

  @override
  String get interestAmountResult => 'Начисленные проценты: ';

  @override
  String get interestAmountAgenda => 'Начисленные проценты';

  @override
  String get loanAmountAgenda => 'Основной долг';

  @override
  String get payoutChart => 'График погашения: ';

  @override
  String get openTable => '+ Посмотреть полную таблицу';
}
