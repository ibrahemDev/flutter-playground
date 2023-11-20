import 'package:flutter_playground/apps/fresh_basket/features/prodacts/models/prodact_response_model.dart';

class ProdactModel extends ProdactResponseModel {
  final int id;
  final String displayName;
  final String categorie;
  final String img;
  final double price;
  final bool liked;
  final int orderCount; // if 0 thene not in order List if more it is in order
  const ProdactModel({
    required this.id,
    required this.displayName,
    required this.categorie,
    required this.img,
    required this.price,
    required this.liked,
    required this.orderCount,
  }) : super(id: id, displayName: displayName, categorie: categorie, img: img, price: price);

  @override
  ProdactModel copyWith({
    int? id,
    String? displayName,
    String? categorie,
    String? img,
    double? price,
    bool? liked,
    int? orderCount,
  }) {
    return ProdactModel(
      id: id ?? this.id,
      displayName: displayName ?? this.displayName,
      categorie: categorie ?? this.categorie,
      img: img ?? this.img,
      price: price ?? this.price,
      liked: liked ?? this.liked,
      orderCount: orderCount ?? this.orderCount,
    );
  }

  @override
  List<Object> get props => [
        id,
        displayName,
        categorie,
        img,
        price,
        liked,
        orderCount,
      ];
}
