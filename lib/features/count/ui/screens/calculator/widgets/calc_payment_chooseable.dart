import 'package:flutter/material.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PaymentType {
  final String paymentName;
  const PaymentType({required this.paymentName});
}

class CalculatorPaymentChooseable extends StatelessWidget {
  final PaymentType paymentType;
  final PaymentType selectedPaymentType;
  final void Function(PaymentType?) onChanged;

  const CalculatorPaymentChooseable({
    super.key,
    required this.paymentType,
    required this.selectedPaymentType,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<PaymentType>(
            value: paymentType,
            groupValue: selectedPaymentType,
            onChanged: onChanged),
        Text(paymentType.paymentName)
      ],
    );
  }
}

class CalcPayments extends StatelessWidget {
  const CalcPayments({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding:  EdgeInsets.all(4.0),
            child: Text("vhddbvd"),
          ),
          CalculatorPaymentChooseable(
            paymentType: PaymentType(paymentName: "fmnd"),
            selectedPaymentType: PaymentType(paymentName: "fnjfd"),
            onChanged: (_) => {},
          ),
          CalculatorPaymentChooseable(
            paymentType: PaymentType(paymentName: "fnjfd"),
            selectedPaymentType: PaymentType(paymentName: "chkdhsk"),
            onChanged: (_) => {},
          ),
        ],
      ),
    );
  }
}
