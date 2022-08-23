import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson_provider/shop_app/pages/history/history_page.dart';
import 'package:lesson_provider/shop_app/pages/home/home_page.dart';
import 'package:lesson_provider/shop_app/pages/main/main_provider.dart';
import 'package:lesson_provider/shop_app/pages/profile/history_page.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  static const id = "/main_page";
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MainProvider(),
      builder: (context, widget){
        var mainProvider = Provider.of<MainProvider>(context, listen: false);
        return Scaffold(
          body: PageView(
            onPageChanged: mainProvider.onPageChange,
            controller: mainProvider.pageController,
            children: const [
              HomePage(),
              HistoryPage(),
              ProfilePage(),
            ],
          ),
          bottomNavigationBar: Consumer<MainProvider>(

            builder: (context, main, child) {
              return BottomNavigationBar(
                onTap: main.onTabNavigatorIcon,
                currentIndex: mainProvider.currentPage,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.home),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.list_bullet),
                    label: "History",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.person),
                    label: "Profile",
                  ),
                ],
              );
            }
          ),
        );
      },
    );
  }
}
