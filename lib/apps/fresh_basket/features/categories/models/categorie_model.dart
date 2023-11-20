import 'package:equatable/equatable.dart';

class CategoryModel extends Equatable {
  final String displayName;
  final String category;
  final String img;
  const CategoryModel({
    required this.displayName,
    required this.category,
    required this.img,
  });
  CategoryModel copyWith({
    String? displayName,
    String? category,
    String? img,
  }) {
    return CategoryModel(
      displayName: displayName ?? this.displayName,
      category: category ?? this.category,
      img: img ?? this.img,
    );
  }

  @override
  List<Object> get props => [
        displayName,
        category,
        img,
      ];
}
