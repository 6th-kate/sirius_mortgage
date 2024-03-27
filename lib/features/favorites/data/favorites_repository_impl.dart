import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirius_mortgage/features/calculator/domain/model/calculator_dataclass.dart';
import 'package:sirius_mortgage/features/favorites/domain/favorites_repository.dart';

class FavoritesRepository implements IFavoritesRepository {
  static const _key = 'favorites';

  @override
  Future<List<SummaryInformationInput>> getAllFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final favoritesString = prefs.getString(_key) ?? '[]';
    final List<dynamic> favoritesJson = jsonDecode(favoritesString);
    return favoritesJson
        .map((json) => SummaryInformationInput.fromJson(json))
        .toList();
  }

  @override
  Future<void> addFavorite(SummaryInformationInput favorite) async {
    final prefs = await SharedPreferences.getInstance();
    final List<SummaryInformationInput> favorites = await getAllFavorites();
    favorites.add(favorite);
    final favoritesString =
        jsonEncode(favorites.map((e) => e.toJson()).toList());
    await prefs.setString(_key, favoritesString);
  }
}
