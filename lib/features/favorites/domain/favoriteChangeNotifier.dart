import 'package:flutter/material.dart';
import 'package:sirius_mortgage/features/calculator/domain/model/calculator_dataclass.dart';
import 'package:sirius_mortgage/features/favorites/domain/favorites_repository.dart';

class FavoriteNotifier extends ChangeNotifier {
  final IFavoritesRepository repository;
  bool isloading = false;
  bool isfavorite = false;
  FavoriteNotifier({required this.repository});
  Future<void> addfavorite(SummaryInformationInput favorite) async {
    if (isloading) {
      return;
    }
    isloading = true;
    notifyListeners();

    try {
      await repository.addFavorite(favorite);
      isfavorite = true;
    } catch (e) {
      rethrow;
    } finally {
      isloading = false;
      notifyListeners();
    }
  }
}
