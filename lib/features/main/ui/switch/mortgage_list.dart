import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sirius_mortgage/features/calculator/domain/model/calculator_dataclass.dart';
import 'package:sirius_mortgage/features/favorites/domain/favorites_bloc/favorite_change_notifier.dart';
import 'package:sirius_mortgage/features/favorites/domain/history_domain/history_change_notifier.dart';

import '../../../../core/di/di.dart';
import '../../../../core/widget/mortgage_card.dart';
import '../../../theme/model/theme_extensions.dart';

class MortgageList extends StatelessWidget {
  final bool isHistory;
  final Future<List<SummaryInformationInput>> getItems;

  const MortgageList({
    super.key,
    required this.isHistory,
    required this.getItems,
  });

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable:
          isHistory ? getIt<HistoryNotifier>() : getIt<FavoriteNotifier>(),
      builder: (context, child) {
        return FutureBuilder<List<SummaryInformationInput>>(
          initialData: null,
          future: getItems,
          builder: (context, snapshot) {
            if (snapshot.connectionState != ConnectionState.waiting) {
              return ListView.builder(
                itemCount: snapshot.data == null ? 0 : snapshot.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: MortgageItem(
                      backgroundColor: isHistory
                          ? Theme.of(context).extension<ThemeColors>()!.history
                          : Theme.of(context).extension<ThemeColors>()!.liked,
                      title: isHistory
                          ? null
                          : DateFormat('dd/MM/yyyy hh:mm')
                              .format(DateTime.now()),
                      loanAmount: snapshot.data?[index].data.loanAmount,
                      downPayment: snapshot.data?[index].data.initialPayment,
                      loanTerm: snapshot.data?[index].data.loanTermMonth,
                      rate: snapshot.data?[index].data.interestRate,
                      currencySymbol:
                          snapshot.data?[index].data.currency.shortSymbol,
                    ),
                  );
                },
              );
            } else {
              return Align(
                alignment: Alignment.topCenter,
                child: CircularProgressIndicator(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  color: Theme.of(context)
                      .extension<ThemeColors>()!
                      .switchBackground,
                ),
              );
            }
          },
        );
      },
    );
  }
}
