import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_now/views/binding/home_binding.dart';
import 'package:shop_now/views/navpages/home_page.dart';
import 'package:shop_now/views/navpages/main_page.dart';

void main() {
  runApp(const ShopNow());
}

class ShopNow extends StatefulWidget {
  const ShopNow({Key? key}) : super(key: key);

  @override
  State<ShopNow> createState() => _ShopNowState();
}

class _ShopNowState extends State<ShopNow> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: HomeScreenBindings(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFD9D9D9)),
      home: HomePage(),
    );
  }
}
