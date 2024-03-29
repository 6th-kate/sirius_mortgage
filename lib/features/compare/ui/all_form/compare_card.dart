import 'package:flutter/material.dart';
import 'package:sirius_mortgage/features/theme/model/theme_extensions.dart';

import '../../../count/domain/domain_models/output_model.dart';
import '../../../locale/locale.dart';
import 'compare_form.dart';

class CompareCard extends StatelessWidget {
  final String? title;
  final double? loanAmount;
  final double? downPayment;
  final int? loanTerm;
  final double? rate;
  final ValueNotifier<OutputDomainModel?> output;

  const CompareCard({
    super.key,
    this.title,
    this.loanAmount,
    this.downPayment,
    this.loanTerm,
    this.rate,
    required this.output,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor,
            blurRadius: 10,
            spreadRadius: 0,
          ),
        ],
      ),
      clipBehavior: Clip.hardEdge,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => _onTap(context),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                title == null
                    ? const SizedBox.shrink()
                    : Text(
                        title!,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        '${AppLocaleScope.of(context).loanAmount}:',
                        style: Theme.of(context).textTheme.bodySmall!.apply(
                              color: Theme.of(context)
                                  .extension<ThemeColors>()!
                                  .label,
                            ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            loanAmount == null
                                ? '____'
                                : '$loanAmount ${output.value!.currency.shortSymbol}',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        '${AppLocaleScope.of(context).downpayment}:',
                        style: Theme.of(context).textTheme.bodySmall!.apply(
                              color: Theme.of(context)
                                  .extension<ThemeColors>()!
                                  .label,
                            ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            downPayment == null
                                ? '____'
                                : '$downPayment ${output.value!.currency.shortSymbol}',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Row(
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text.rich(
                            TextSpan(
                              text: '${AppLocaleScope.of(context).loanTerm}: ',
                              style:
                                  Theme.of(context).textTheme.bodySmall!.apply(
                                        color: Theme.of(context)
                                            .extension<ThemeColors>()!
                                            .label,
                                      ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: loanTerm == null ? '____' : '$loanTerm',
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text.rich(
                            TextSpan(
                              text: '${AppLocaleScope.of(context).rate}: ',
                              style:
                                  Theme.of(context).textTheme.bodySmall!.apply(
                                        color: Theme.of(context)
                                            .extension<ThemeColors>()!
                                            .label,
                                      ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: rate == null
                                      ? '____'
                                      : '${rate!.toStringAsFixed(2)} %',
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _onTap(BuildContext context) {
    showCompareFormBottomSheet(context, output);
  }
}
