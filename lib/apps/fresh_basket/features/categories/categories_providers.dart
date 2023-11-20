import 'package:flutter_playground/apps/fresh_basket/features/categories/models/categorie_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoriesList = Provider<List<CategoryModel>>(
  (ref) => [
    const CategoryModel(
      displayName: "Vegetables",
      category: "vegetables",
      img: "assest/apps/fresh_basket/images/categories/vegetables.jfif",
    ),
    const CategoryModel(
      displayName: "Fruits",
      category: "fruits",
      img: "assest/apps/fresh_basket/images/categories/fruits.jfif",
    ),
    const CategoryModel(
      displayName: "Meats",
      category: "meats",
      img: "assest/apps/fresh_basket/images/categories/meats.jfif",
    ),
    const CategoryModel(
      displayName: "Dairy",
      category: "dairy",
      img: "assest/apps/fresh_basket/images/categories/dairy.jfif",
    ),
    const CategoryModel(
      displayName: "Vegetables",
      category: "vegetables",
      img: "assest/apps/fresh_basket/images/categories/vegetables.jfif",
    ),
    const CategoryModel(
      displayName: "Fruits",
      category: "fruits",
      img: "assest/apps/fresh_basket/images/categories/fruits.jfif",
    ),
    const CategoryModel(
      displayName: "Meats",
      category: "meats",
      img: "assest/apps/fresh_basket/images/categories/meats.jfif",
    ),
    const CategoryModel(
      displayName: "Dairy",
      category: "dairy",
      img: "assest/apps/fresh_basket/images/categories/dairy.jfif",
    ),
  ],
);
