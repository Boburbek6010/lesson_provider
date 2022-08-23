import 'package:flutter/cupertino.dart';

class MainProvider extends ChangeNotifier{
  PageController pageController = PageController(keepPage: true);
  int currentPage = 0;

  void onTabNavigatorIcon(int index){
    currentPage = index;
    pageController.jumpToPage(index);
    notifyListeners();
  }

  void onPageChange(int index){
    currentPage = index;
    notifyListeners();
  }
}