import 'package:flutter/material.dart';
import 'package:shop_now/views/navpages/cart_page.dart';
import 'package:shop_now/views/navpages/home_page.dart';
import 'package:shop_now/views/navpages/profile_page.dart';
import 'package:shop_now/views/navpages/search_page.dart';

import '../../consts/app_colors.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_botton_navbar.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    SearchPage(),
    CartPage(),
    ProfilePage(),
  ];

  List titles = [
    'Shop Now',
  ];

  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      // appBar: CustomAppBar(
      //   title: 'Shop Now',
      // ),
      bottomNavigationBar: SizedBox(
        height: 65,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            currentIndex: currentIndex,
            onTap: onTap,
            selectedItemColor: Colors.black54,
            unselectedItemColor: Colors.black54.withOpacity(.2),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.apps),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.local_grocery_store), label: 'Cart'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
            ],
          ),
        ),
      ),
    );
  }
}
