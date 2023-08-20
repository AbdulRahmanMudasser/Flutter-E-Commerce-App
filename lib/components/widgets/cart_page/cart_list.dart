import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/app_assets.dart';
import '../../../config/app_size_config.dart';
import '../../../models/cart_model.dart';
import 'cart_item_card.dart';

class CartList extends StatefulWidget {
  const CartList({super.key});

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizeConfig.getProportionateScreenWidth(20)),
      child: ListView.builder(
        itemCount: CartModel.carts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Dismissible(
              key: Key(CartModel.carts[index].product.id.toString()),
              direction: DismissDirection.endToStart,
              background: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: const Color(0xffFFE6E6),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    const Spacer(),
                    SvgPicture.asset(AppAssets.trash),
                  ],
                ),
              ),
              child: CartItemCard(
                cart: CartModel.carts[index],
              ),
              onDismissed: (direction) {
                setState(
                      () {
                    CartModel.carts.removeAt(index);
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}