import 'package:flutter_playground/apps/fresh_basket/features/prodacts/models/prodact_response_model.dart';

class ProdactRepository {
  Future<List<ProdactResponseModel>> getAllProdact() async {
    await Future.delayed(const Duration(seconds: 2));
    return const [
      ProdactResponseModel(id: 1, categorie: "vegetables", displayName: "Tomato", img: "assest/apps/fresh_basket/images/prodacts/tomato.png", price: 7),
      ProdactResponseModel(id: 2, categorie: "vegetables", displayName: "Cauliflower", img: "assest/apps/fresh_basket/images/prodacts/cauliflower.png", price: 7),
      ProdactResponseModel(id: 3, categorie: "vegetables", displayName: "Brocholi", img: "assest/apps/fresh_basket/images/prodacts/brocholi.png", price: 7),
      ProdactResponseModel(id: 4, categorie: "vegetables", displayName: "Peas", img: "assest/apps/fresh_basket/images/prodacts/peas.png", price: 7),
      ProdactResponseModel(id: 5, categorie: "vegetables", displayName: "Spinach", img: "assest/apps/fresh_basket/images/prodacts/spinach.png", price: 7),
      ProdactResponseModel(id: 6, categorie: "vegetables", displayName: "Ginger", img: "assest/apps/fresh_basket/images/prodacts/ginger.png", price: 7),
      ProdactResponseModel(id: 7, categorie: "vegetables", displayName: "Onion", img: "assest/apps/fresh_basket/images/prodacts/onion.png", price: 7),
      ProdactResponseModel(id: 8, categorie: "vegetables", displayName: "Eggplant", img: "assest/apps/fresh_basket/images/prodacts/eggplant.png", price: 7),
      ProdactResponseModel(id: 9, categorie: "vegetables", displayName: "Long Green Pumpkin", img: "assest/apps/fresh_basket/images/prodacts/long_green_pumpkin.png", price: 7),
      ProdactResponseModel(id: 10, categorie: "fruits", displayName: "Banana", img: "assest/apps/fresh_basket/images/prodacts/banana.png", price: 7),
      ProdactResponseModel(id: 11, categorie: "fruits", displayName: "Guava", img: "assest/apps/fresh_basket/images/prodacts/guava.png", price: 7),
      ProdactResponseModel(id: 12, categorie: "fruits", displayName: "Star Fruit", img: "assest/apps/fresh_basket/images/prodacts/star_fruit.png", price: 7),
      ProdactResponseModel(id: 13, categorie: "fruits", displayName: "Lemon", img: "assest/apps/fresh_basket/images/prodacts/lemon.png", price: 7),
      ProdactResponseModel(id: 14, categorie: "fruits", displayName: "Kiwi", img: "assest/apps/fresh_basket/images/prodacts/kiwi.png", price: 7),
      ProdactResponseModel(id: 15, categorie: "fruits", displayName: "Pineapple", img: "assest/apps/fresh_basket/images/prodacts/pineapple.png", price: 7),
      ProdactResponseModel(id: 16, categorie: "fruits", displayName: "Orange", img: "assest/apps/fresh_basket/images/prodacts/orange.png", price: 7),
    ];
  }
}
