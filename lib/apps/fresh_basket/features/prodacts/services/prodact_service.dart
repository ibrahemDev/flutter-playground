import 'package:flutter_playground/apps/fresh_basket/features/prodacts/models/prodact_model.dart';
import 'package:flutter_playground/apps/fresh_basket/features/prodacts/models/prodact_response_model.dart';
import 'package:flutter_playground/apps/fresh_basket/features/prodacts/repositores/prodact_repository.dart';
import 'package:flutter_playground/features/shared_prefs_storage/repositories/shared_prefs_storage_repository.dart';

class ProdactService {
  final ProdactRepository prodactRepository;
  final SharedPrefsStorageRepository sharedPrefsStorageRepository;

  List<int>? _favouritesProdactsList;
  List<int> get favouritesProdactsList {
    if (_favouritesProdactsList == null) {
      final stringsIds = sharedPrefsStorageRepository.getStringList("favourites_prodacts") ?? [];
      final intIds = stringsIds.map((e) => int.parse(e)).toList();
      _favouritesProdactsList = intIds;
      return intIds;
    } else {
      return _favouritesProdactsList!;
    }
  }

  ProdactService({required this.prodactRepository, required this.sharedPrefsStorageRepository});

  Future<bool> addLikeProdact(int id) async {
    final p = favouritesProdactsList;
    int index = p.indexOf(id);
    if (index != -1) return true;

    _favouritesProdactsList!.add(id);
    return sharedPrefsStorageRepository.setStringList("favourites_prodacts", favouritesProdactsList.map((e) => e.toString()).toList());
  }

  Future<bool> removeLikeProdact(int id) async {
    final p = favouritesProdactsList;
    int index = p.indexOf(id);
    if (index == -1) return true;
    _favouritesProdactsList!.removeAt(index);
    return sharedPrefsStorageRepository.setStringList("favourites_prodacts", favouritesProdactsList.map((e) => e.toString()).toList());
  }

  Future<List<ProdactModel>> getAllProdact() async {
    final List<ProdactResponseModel> prodactResponseModelList = await prodactRepository.getAllProdact();

    return prodactResponseModelList.map((e) {
      int index = favouritesProdactsList.indexOf(e.id);
      return ProdactModel(id: e.id, displayName: e.displayName, categorie: e.categorie, img: e.img, price: e.price, liked: index == -1 ? false : true, orderCount: 0);
    }).toList();
    //ProdactModel
    //return prodactRepository.getAllProdact();
  }
}
