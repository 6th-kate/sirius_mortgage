import 'package:flutter/material.dart';
import 'package:sirius_mortgage/features/count/domain/domain_models/output_model.dart';

import '../../../locale/locale.dart';
import '../result/result_screen.dart';

class CompareButton extends StatelessWidget {
  final ValueNotifier<OutputDomainModel?> first;
  final ValueNotifier<OutputDomainModel?> second;
  const CompareButton({super.key, required this.first, required this.second});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: first,
      builder: (
        BuildContext context,
        OutputDomainModel? value,
        Widget? child,
      ) {
        return ValueListenableBuilder(
          valueListenable: second,
          builder: (
            BuildContext context,
            OutputDomainModel? value,
            Widget? child,
          ) {
            bool isValid = (first.value != null) && (second.value != null);
            return SizedBox(
              width: double.maxFinite,
              height: 80.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: isValid
                      ? () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => CompareResultPage(
                                  first.value!, second.value!),
                            ),
                          );
                        }
                      : null,
                  child: Text(
                    AppLocaleScope.of(context).compare,
                  ),
                ),
              ),
              //),
            );
          },
        );
      },
    );
  }
}
