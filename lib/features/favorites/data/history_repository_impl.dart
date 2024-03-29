import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirius_mortgage/features/calculator/domain/model/calculator_dataclass.dart';
import 'package:sirius_mortgage/features/favorites/data/shared_prefs_service/keystore.dart';
import 'package:sirius_mortgage/features/favorites/domain/history_domain/history_repository.dart';

@Injectable(as: IHistoryRepository)
class HistoryRepository implements IHistoryRepository {
  final SharedPreferences prefs;

  HistoryRepository(this.prefs);

  @override
  Future<List<SummaryInformationInput>> getAllHistory() async {
    final historyString =
        prefs.getString(KeyStore.historyKey) ?? KeyStore.historyDefault;
    final List<dynamic> historyJson = jsonDecode(historyString);
    return historyJson
        .map((json) => SummaryInformationInput.fromJson(json))
        .toList();
  }

  @override
  Future<void> addHistory(SummaryInformationInput history) async {
    final List<SummaryInformationInput> allHistory = await getAllHistory();

    allHistory.insert(0, history);
    if (allHistory.length >= 20) {
      allHistory.removeLast();
    }

    final historyString =
        jsonEncode(allHistory.map((e) => e.toJson()).toList());
    await prefs.setString(KeyStore.historyKey, historyString);
  }
}
