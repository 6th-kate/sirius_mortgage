import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sirius_mortgage/features/count/domain/calculator_bloc/calculator_bloc.dart';
import 'package:sirius_mortgage/features/favorites/domain/favorites_bloc/favorites_repository.dart';
import 'package:sirius_mortgage/features/favorites/domain/history_domain/history_repository.dart';
import 'package:sirius_mortgage/features/main/ui/switch/mortgage_list.dart';

import '../../../core/di/di.dart';
import '../../count/ui/screens/result/result_screen.dart';
import '../../theme/model/theme_extensions.dart';

class FavHisBlocProvider extends StatelessWidget {
  const FavHisBlocProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<CalculatorBloc>(),
      child: const FavoritesHistoryWidget(),
    );
  }
}

class FavoritesHistoryWidget extends StatefulWidget {
  const FavoritesHistoryWidget({super.key});

  @override
  State<FavoritesHistoryWidget> createState() => _FavoritesHistoryWidgetState();
}

class _FavoritesHistoryWidgetState extends State<FavoritesHistoryWidget> {
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
        BlocListener<CalculatorBloc, CalculatorState>(
          bloc: context.read<CalculatorBloc>(),
          // listenWhen: (prev, next) => pre,
          listener: (context, state) {
            if (state is SuccessCalculatorState) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ResultPage(state.outputModel),
                ),
              );
            }
          },
          child: Expanded(
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
