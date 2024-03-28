import 'package:sirius_mortgage/features/calculator/domain/model/calculator_dataclass.dart';

abstract interface class IFavoritesRepository {
  Future<List<SummaryInformationInput>> getAllFavorites();
  
  Future<void> addFavorite(SummaryInformationInput favorite);
}
