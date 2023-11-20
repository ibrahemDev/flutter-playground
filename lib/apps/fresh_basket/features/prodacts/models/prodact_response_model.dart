import 'package:equatable/equatable.dart';

class ProdactResponseModel extends Equatable {
  final int id;
  final String displayName;
  final String categorie;
  final String img;
  final double price;
  const ProdactResponseModel({
    required this.id,
    required this.displayName,
    required this.categorie,
    required this.img,
    required this.price,
  });
  ProdactResponseModel copyWith({
    int? id,
    String? displayName,
    String? categorie,
    String? img,
    double? price,
  }) {
    return ProdactResponseModel(
      id: id ?? this.id,
      displayName: displayName ?? this.displayName,
      categorie: categorie ?? this.categorie,
      img: img ?? this.img,
      price: price ?? this.price,
    );
  }

  @override
  List<Object> get props => [
        id,
        displayName,
        categorie,
        img,
        price,
      ];
}
