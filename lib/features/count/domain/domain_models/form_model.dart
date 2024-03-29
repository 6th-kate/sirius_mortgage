import 'package:sirius_mortgage/features/count/domain/domain_models/input_model.dart';

import '../../../settings/domain/currency/currency_enum.dart';

class FormModel {
  final String? cost;
  final String? contribution;
  final String? term;
  final String? bet;
  final bool isAnnuityPaymentType;
  final CurrencyType currency;

  FormModel({
    this.cost,
    this.contribution,
    this.term,
    this.bet,
    this.isAnnuityPaymentType = true,
    required this.currency,
  });

  FormModel.fromInput(
    InputDomainModel inputDomainModel,
    this.currency,
  )   : cost = inputDomainModel.input.data.loanAmount.toString(),
        contribution = inputDomainModel.input.data.initialPayment.toString(),
        term = inputDomainModel.input.data.loanTermMonth.toString(),
        bet = inputDomainModel.input.data.interestRate.toString(),
        isAnnuityPaymentType = true;

  bool get isFullyFilled =>
      cost != null && contribution != null && term != null && bet != null;

  bool get isFullyParsed =>
      int.tryParse(cost ?? '') != null &&
      int.tryParse(contribution ?? '') != null &&
      int.tryParse(term ?? '') != null &&
      double.tryParse(bet ?? '') != null;

  FormModel copyWith({
    String? cost,
    String? contribution,
    String? term,
    String? bet,
    bool? isAnnuityPaymentType,
    CurrencyType? currency,
  }) {
    return FormModel(
      cost: cost ?? this.cost,
      contribution: contribution ?? this.contribution,
      term: term ?? this.term,
      bet: bet ?? this.bet,
      isAnnuityPaymentType: isAnnuityPaymentType ?? this.isAnnuityPaymentType,
      currency: currency ?? this.currency,
    );
  }
}
