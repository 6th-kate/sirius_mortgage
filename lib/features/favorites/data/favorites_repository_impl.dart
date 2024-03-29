import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirius_mortgage/features/calculator/domain/model/calculator_dataclass.dart';
import 'package:sirius_mortgage/features/favorites/data/shared_prefs_service/keystore.dart';
import 'package:sirius_mortgage/features/favorites/domain/favorites_bloc/favorites_repository.dart';

@Injectable(as: IFavoritesRepository)
class FavoritesRepository implements IFavoritesRepository {
  final SharedPreferences prefs;

  FavoritesRepository(this.prefs);

  @override
  Future<List<SummaryInformationInput>> getAllFavorites() async {
    final favoritesString =
        prefs.getString(KeyStore.favoritesKey) ?? KeyStore.favoritesDefault;
    final List<dynamic> favoritesJson = jsonDecode(favoritesString);
    return favoritesJson
        .map((json) => SummaryInformationInput.fromJson(json))
        .toList();
  }

  @override
  Future<void> addFavorite(SummaryInformationInput favorite) async {
    final List<SummaryInformationInput> favorites = await getAllFavorites();
    favorites.add(favorite);
    final favoritesString =
        jsonEncode(favorites.map((e) => e.toJson()).toList());
    await prefs.setString(KeyStore.favoritesKey, favoritesString);
  }
}
