import 'package:flutter/material.dart';

import '../../../config/app_string.dart';
import '../../../models/cart_model.dart';

class CartAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CartAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          const Text(
            AppStrings.yourCart,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          Text(
            "${CartModel.carts.length} items",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
