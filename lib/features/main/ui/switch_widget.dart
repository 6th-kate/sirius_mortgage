import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sirius_mortgage/features/favorites/domain/favorites_bloc/favorites_repository.dart';

import '../../../core/widget/mortgage_card.dart';
import '../../calculator/domain/model/calculator_dataclass.dart';
import '../../theme/model/theme_extensions.dart';

class LeadersWidget extends StatefulWidget {
  const LeadersWidget({super.key});

  @override
  State<LeadersWidget> createState() => _LeadersWidgetState();
}

class _LeadersWidgetState extends State<LeadersWidget> {
  int _groupValue = 0;
  // final IFavoritesRepository _repository;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 4),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity,
              child: CupertinoSlidingSegmentedControl<int>(
                thumbColor: Theme.of(context).colorScheme.background,
                backgroundColor: Theme.of(context)
                    .extension<ThemeColors>()!
                    .switchBackground,
                onValueChanged: (value) {
                  if (value != null) {
                    setState(() {
                      _groupValue = value;
                    });
                  }
                },
                groupValue: _groupValue,
                children: const {
                  0: TrIndexOptionsWidget('История'),
                  1: TrIndexOptionsWidget('Избранное'),
                },
              ),
            ),
          ),
        ),
        Expanded(
          child: FutureBuilder<List<SummaryInformationInput>>(
            initialData: const <SummaryInformationInput>[],
            future: null,
            builder: (context, snapshot) {
              if (snapshot.connectionState != ConnectionState.waiting) {
                return ListView.builder(
                  itemCount: snapshot.data == null ? 0 : snapshot.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      child: _groupValue == 0
                          ? MortgageItem(
                              backgroundColor: Theme.of(context)
                                  .extension<ThemeColors>()!
                                  .history,
                              key: ValueKey<int>(_groupValue),
                              title: 'Дом какой то',
                              loanAmount: 2000000,
                              downPayment: 200000,
                              loanTerm: 20,
                              rate: 7,
                            )
                          : MortgageItem(
                              backgroundColor: Theme.of(context)
                                  .extension<ThemeColors>()!
                                  .liked,
                              key: ValueKey<int>(_groupValue),
                              title: 'Дом какой то',
                              loanAmount: 10000,
                              downPayment: 2543700,
                              loanTerm: 54,
                              rate: 3.5,
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
          ),
        ),
      ],
    );
  }
}

// class TrendIndexLeadersListTileWidget extends StatelessWidget {
//   const TrendIndexLeadersListTileWidget(this.item, {super.key});
//
//   final TrendIndexLeadersItem item;
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: CircleAvatar(child: Image.asset(item.image)),
//       title: Text(
//         item.text,
//         style: AppTextStyles.subheadlineSemibold14,
//       ),
//       trailing: Text(
//         '${item.percent} %',
//         style: AppTextStyles.issMoney.apply(color: AppColors.statesSuccess),
//       ),
//     );
//   }
// }

class TrIndexOptionsWidget extends StatelessWidget {
  const TrIndexOptionsWidget(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: double.infinity,
      child: Center(
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
    );
  }
}
