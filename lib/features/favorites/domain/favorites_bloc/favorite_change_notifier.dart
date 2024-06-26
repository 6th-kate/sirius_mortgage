import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:sirius_mortgage/features/calculator/domain/model/calculator_dataclass.dart';

import 'favorites_repository.dart';

@injectable
class FavoriteNotifier extends ChangeNotifier {
  final IFavoritesRepository repository;
  bool isLoading = false;
  bool isFavorite = false;

  FavoriteNotifier({required this.repository});

  Future<void> addFavorite(SummaryInformationInput favorite) async {
    if (isLoading) {
      return;
    }
    isLoading = true;
    notifyListeners();

    try {
      await repository.addFavorite(favorite);
      isFavorite = true;
    } catch (e) {
      rethrow;
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
