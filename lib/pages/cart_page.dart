import 'package:flutter/material.dart';

import '../components/widgets/cart_page/cart_app_bar.dart';
import '../components/widgets/cart_page/cart_list.dart';
import '../components/widgets/cart_page/checkout_card.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CartAppBar(),
      body: CartList(),
      bottomNavigationBar: CheckoutCard(),
    );
  }
}

