import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:sirius_mortgage/features/calculator/domain/model/calculator_dataclass.dart';
import 'package:sirius_mortgage/features/favorites/data/favorites_repository_impl.dart';

@injectable
class FavoriteNotifier extends ChangeNotifier {
  final FavoritesRepository repository;
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
