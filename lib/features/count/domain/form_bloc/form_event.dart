part of 'form_bloc.dart';

@immutable
sealed class FormEvent {
  const FormEvent();
}

class CostChangedEvent extends FormEvent {
  const CostChangedEvent(this.cost);

  final String cost;
}

class ContributionChangedEvent extends FormEvent {
  final String contribution;

  const ContributionChangedEvent(this.contribution);
}

class TermChangedEvent extends FormEvent {
  final String term;

  const TermChangedEvent(this.term);
}

class BetChangedEvent extends FormEvent {
  final String bet;

  const BetChangedEvent(this.bet);
}

class AnnuityPaymentTypeChangeEvent extends FormEvent {
  final bool isAnnuityPaymentType;

  const AnnuityPaymentTypeChangeEvent(this.isAnnuityPaymentType);
}

class SuccessEvent extends FormEvent {}

class ErrorEvent extends FormEvent {}
