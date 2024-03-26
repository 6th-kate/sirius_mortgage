class FormModel {
  final String? cost;
  final String? contribution;
  final String? term;
  final String? bet;
  final bool isAnnuityPaymentType;

  FormModel({
    this.cost,
    this.contribution,
    this.term,
    this.bet,
    this.isAnnuityPaymentType = true,
  });

  bool get isFullyFilled =>
      cost != null && contribution != null && term != null && bet != null;

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
