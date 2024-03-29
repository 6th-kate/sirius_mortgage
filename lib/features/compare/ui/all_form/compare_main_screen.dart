import 'package:flutter/material.dart';

import '../../../count/domain/domain_models/output_model.dart';
import '../../../locale/locale.dart';
import 'compare_button.dart';
import 'compare_card.dart';

class ComparePage extends StatefulWidget {
  const ComparePage({super.key});

  @override
  State<ComparePage> createState() => _ComparePageState();
}

class _ComparePageState extends State<ComparePage> {
  final ValueNotifier<OutputDomainModel?> varFirst =
      ValueNotifier<OutputDomainModel?>(null);
  final ValueNotifier<OutputDomainModel?> varSecond =
      ValueNotifier<OutputDomainModel?>(null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocaleScope.of(context).compare,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ValueListenableBuilder(
                valueListenable: varFirst,
                builder: (
                  BuildContext context,
                  OutputDomainModel? value,
                  Widget? child,
                ) {
                  return CompareCard(
                    title: AppLocaleScope.of(context).variantFirst,
                    loanAmount: value?.input.data.loanAmount,
                    downPayment: value?.input.data.initialPayment,
                    loanTerm: value?.input.data.loanTermMonth,
                    rate: value?.input.data.interestRate,
                    output: varFirst,
                  );
                },
              ),
              const SizedBox(
                height: 16,
              ),
              ValueListenableBuilder(
                valueListenable: varSecond,
                builder: (
                  BuildContext context,
                  OutputDomainModel? value,
                  Widget? child,
                ) {
                  return CompareCard(
                    title: AppLocaleScope.of(context).variantSecond,
                    loanAmount: value?.input.data.loanAmount,
                    downPayment: value?.input.data.initialPayment,
                    loanTerm: value?.input.data.loanTermMonth,
                    rate: value?.input.data.interestRate,
                    output: varSecond,
                  );
                },
              ),
              CompareButton(
                first: varFirst,
                second: varSecond,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
