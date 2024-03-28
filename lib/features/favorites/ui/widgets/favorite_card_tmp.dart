import 'package:flutter/material.dart';

class FavoriteCardTemplate extends StatelessWidget {
  final String loanAmount;
  final String downpayment;
  final String loanTerm;
  final String rate;

  final double loanAmountD;
  final double downpaymentD;
  final double termD;
  final double rateD;
  final VoidCallback? onClick;

  const FavoriteCardTemplate({
    super.key,
    required this.loanAmount,
    required this.downpayment,
    required this.loanTerm,
    required this.rate,
    required this.loanAmountD,
    required this.downpaymentD,
    required this.termD,
    required this.rateD,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        alignment: Alignment.center,
        color: const Color(0x1A009A00),
        padding: const EdgeInsets.symmetric(vertical: 10.0),
      ),
    );
  }
}
