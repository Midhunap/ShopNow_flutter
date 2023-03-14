import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_now/widgets/custom_app_bar.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Cart',
      ),
    );
  }
}
