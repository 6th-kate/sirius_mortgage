import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:sirius_mortgage/features/calculator/domain/model/calculator_dataclass.dart';

import 'history_repository.dart';

@injectable
class HistoryNotifier extends ChangeNotifier {
  final IHistoryRepository repository;
  bool isLoading = false;

  HistoryNotifier({required this.repository});

  Future<void> addHistory(SummaryInformationInput history) async {
    if (isLoading) {
      return;
    }
    isLoading = true;
    notifyListeners();

    try {
      await repository.addHistory(history);
    } catch (e) {
      rethrow;
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
