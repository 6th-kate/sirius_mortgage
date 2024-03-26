import 'app_localizations.g.dart';

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get currency => 'EUR';

  @override
  String get mortgageCalculator => 'Calculateur d\'hypothèque';

  @override
  String get calculateMortgage => 'Calculer l\'hypothèque';

  @override
  String get calculateMortgageLabel => 'Découvrez combien vous allez payer en trop';

  @override
  String get compareMortgage => 'Comparer les programmes';

  @override
  String get compareMortgageLabel => 'Trouvez la meilleure offre';

  @override
  String get loanAmount => 'Montant total de l\'hypothèque';

  @override
  String get downpayment => 'Un frais initial';

  @override
  String get loanTerm => 'Durée (mois)';

  @override
  String get rate => 'Taux d\'intérêt';

  @override
  String get paymentsType => 'Type de paiements mensuels';

  @override
  String get annuity => 'Annuité';

  @override
  String get differentiated => 'Différencié';

  @override
  String get calculate => 'Calculer';

  @override
  String get result => 'Résultat';

  @override
  String get totalPayoutResult => 'Montant total: ';

  @override
  String get loanAmountResult => 'Dette principale: ';

  @override
  String get interestAmountResult => 'Frais d\'intérêt: ';

  @override
  String get interestAmountAgenda => 'Frais d\'intérêt';

  @override
  String get loanAmountAgenda => 'Dette principale';

  @override
  String get payoutChart => 'Calendrier de remboursement: ';

  @override
  String get openTable => '+ Voir le tableau complet';
}
