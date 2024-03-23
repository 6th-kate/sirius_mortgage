final class FormModel {
  final String cost;
  final String contribution;
  final String term;
  final String bet;
  final bool isAnnuityPaymentType;

  const FormModel({
    required this.cost,
    required this.contribution,
    required this.term,
    required this.bet,
    required this.isAnnuityPaymentType,
  });

  const FormModel.empty()
      : cost = '',
        contribution = '',
        term = '',
        bet = '',
        isAnnuityPaymentType = true;

  FormModel copyWith({
    String? cost,
    String? contribution,
    String? term,
    String? bet,
    bool? isAnnuityPaymentType,
  }) {
    return FormModel(
      cost: cost ?? this.cost,
      contribution: contribution ?? this.contribution,
      term: term ?? this.term,
      bet: bet ?? this.bet,
      isAnnuityPaymentType: isAnnuityPaymentType ?? this.isAnnuityPaymentType,
    );
  }
}
