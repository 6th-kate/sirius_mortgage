import 'package:sirius_mortgage/features/calculator/domain/model/calculator_dataclass.dart';

abstract interface class IHistoryRepository {
  Future<List<SummaryInformationInput>> getAllHistory();

  Future<void> addHistory(SummaryInformationInput history);
}
