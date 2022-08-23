import 'package:flutter/material.dart';
import 'package:lesson_provider/shop_app/models/category_model.dart';
import 'package:lesson_provider/shop_app/models/product_model.dart';
import 'package:lesson_provider/shop_app/pages/detail/detail_page.dart';
import 'package:lesson_provider/shop_app/pages/products/products_page.dart';
import 'package:lesson_provider/shop_app/services/mock_data.dart';
import '../../services/mock_data.dart';

class HomeProvider extends ChangeNotifier {
  int orderNumber = 0;
  List<Category> categories = [];
  List<Product> products = [];

  void onPressedBasket() {}

  void getAllCategories() {
    categories = categoriesMock
        .map((categories) => Category.fromJson(categories))
        .toList();
    notifyListeners();
  }

  void getProducts(String categoryId) {
    products = productsMock
        .where((product) => product["categoryId"] == categoryId)
        .map((product) => Product.fromJson(product))
        .toList();
  }

  int get gridSize{
    if(products.length>=4){
      return 4;
    }else{
      return products.length;
    }
  }

  void openDetailPage({required BuildContext context, required Product product}){
    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(product: product)));
  }


  void openProductsPage({required BuildContext context, required String id}){
    Navigator.push(context, MaterialPageRoute(builder: (context) => ProductsPage(categoryId: id)));
  }

}
