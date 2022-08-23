import 'package:flutter/material.dart';
import 'package:lesson_provider/shop_app/pages/home/home_page.dart';
import 'package:lesson_provider/shop_app/pages/main/main_page.dart';


void main(){
  runApp(ShopApp());
}


class ShopApp extends StatelessWidget {
  const ShopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      routes: {
        HomePage.id:(context) => HomePage(),
        MainPage.id:(context) => MainPage(),
      },
    );
  }
}
