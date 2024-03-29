import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sirius_mortgage/features/favorites/domain/favorites_bloc/favorites_repository.dart';
import 'package:sirius_mortgage/features/favorites/domain/history_domain/history_repository.dart';
import 'package:sirius_mortgage/features/main/ui/switch/mortgage_list.dart';

import '../../../core/di/di.dart';
import '../../theme/model/theme_extensions.dart';

class LeadersWidget extends StatefulWidget {
  const LeadersWidget({super.key});

  @override
  State<LeadersWidget> createState() => _LeadersWidgetState();
}

class _LeadersWidgetState extends State<LeadersWidget> {
  int _groupValue = 0;
  late IFavoritesRepository _repository;
  late IHistoryRepository _repositoryHistory;

  @override
  void initState() {
    super.initState();
    _repository = getIt<IFavoritesRepository>();
    _repositoryHistory = getIt<IHistoryRepository>();
  }

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
          child: _groupValue == 0
              ? MortgageList(
                  isHistory: true,
                  getItems: _repositoryHistory.getAllHistory(),
                )
              : MortgageList(
                  isHistory: false,
                  getItems: _repository.getAllFavorites(),
                ),
        ),
      ],
    );
  }
}

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
