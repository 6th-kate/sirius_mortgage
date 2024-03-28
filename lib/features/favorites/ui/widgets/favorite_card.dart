import 'package:flutter/material.dart';
import 'package:sirius_mortgage/features/favorites/ui/widgets/favorite_card_tmp.dart';
import 'package:sirius_mortgage/features/locale/widget/app_locale_scope.dart';

class FavoriteCard extends StatelessWidget {
  final double loanAmountD;
  final double downpaymentD;
  final double termD;
  final double rateD;
  final VoidCallback? onClick;

  const FavoriteCard(
      {super.key,
      required this.loanAmountD,
      required this.downpaymentD,
      required this.termD,
      required this.rateD,
      this.onClick,});

  @override
  Widget build(BuildContext context) {
    return FavoriteCardTemplate(
      loanAmount: AppLocaleScope.of(context).loanAmount,
      downpayment: AppLocaleScope.of(context).downpayment,
      loanTerm: AppLocaleScope.of(context).loanTerm,
      rate: AppLocaleScope.of(context).rate,
      loanAmountD: 0,
      downpaymentD: 0,
      termD: 0,
      rateD: 0,
      onClick: onClick,
    );
  }
}
