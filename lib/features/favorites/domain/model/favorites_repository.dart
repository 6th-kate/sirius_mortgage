import 'package:sirius_mortgage/features/calculator/domain/model/calculator_dataclass.dart';

abstract interface class FavoritesRepository {
  
  Future<List<CalculatorResultData>> getAllFavorites();

  Future<void> addFavorite(CalculatorResultData favorite);
}

