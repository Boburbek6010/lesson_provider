import 'package:flutter/material.dart';

import '../../models/category_model.dart';
import '../../models/product_model.dart';
import '../../services/mock_data.dart';

class ProductsProvider extends ChangeNotifier{
  final String categoryId;
  Category category;
  late List<Product>products = [];
  ProductsProvider({required this.categoryId, required this.category});

  void getCategory() {
    category = Category.fromJson(categoriesMock.firstWhere((category) => categoryId == category["id"]));
    notifyListeners();
  }


  void getProducts() {
    products = productsMock
        .where((product) => product["categoryId"] == categoryId)
        .map((product) => Product.fromJson(product)).toList();
  }

}