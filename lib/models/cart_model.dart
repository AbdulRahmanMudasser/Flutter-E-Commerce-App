import 'package:flutter_e_commerce_app/models/product_model.dart';

class CartModel {
  final ProductModel product;
  final int itemCount;

  CartModel({
    required this.product,
    required this.itemCount,
  });

  static List<CartModel> carts = [
    CartModel(
      product: ProductModel.products[0],
      itemCount: 2,
    ),
    CartModel(
      product: ProductModel.products[1],
      itemCount: 1,
    ),
    CartModel(
      product: ProductModel.products[2],
      itemCount: 1,
    ),
  ];
}
