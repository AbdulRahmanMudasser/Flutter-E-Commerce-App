import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/config/app_assets.dart';
import 'package:flutter_e_commerce_app/config/app_string.dart';

class ProductModel {
  final int id;
  final String title;
  final String description;
  final List<String> images;
  final List<Color> colors;
  final double rating;
  final double price;
  final bool isFavourite;
  final bool isPopular;

  ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.images,
    required this.colors,
    required this.rating,
    required this.isFavourite,
    required this.isPopular,
  });

  static List<ProductModel> products = [
    ProductModel(
      id: 1,
      title: AppStrings.product1Title,
      description: AppStrings.product1Desc,
      price: 64.99,
      images: [
        AppAssets.product1Image1,
        AppAssets.product1Image2,
        AppAssets.product1Image3,
        AppAssets.product1Image4,
      ],
      colors: [
        const Color(0xFFF6625E),
        const Color(0xFF836DB8),
        const Color(0xFFDECB9C),
        Colors.white,
      ],
      rating: 4.8,
      isFavourite: true,
      isPopular: true,
    ),
    ProductModel(
      id: 2,
      title: AppStrings.product2Title,
      description: AppStrings.product2Desc,
      price: 50.58,
      images: [
        AppAssets.product2Image,
      ],
      colors: [
        const Color(0xFFF6625E),
        const Color(0xFF836DB8),
        const Color(0xFFDECB9C),
        Colors.white,
      ],
      rating: 4.1,
      isFavourite: false,
      isPopular: true,
    ),
    ProductModel(
      id: 3,
      title: AppStrings.product3Title,
      description: AppStrings.product3Desc,
      price: 36.55,
      images: [
        AppAssets.product3Image,
      ],
      colors: [
        const Color(0xFFF6625E),
        const Color(0xFF836DB8),
        const Color(0xFFDECB9C),
        Colors.white,
      ],
      rating: 3.7,
      isFavourite: true,
      isPopular: true,
    ),
    ProductModel(
      id: 4,
      title: AppStrings.product4Title,
      description: AppStrings.product4Desc,
      price: 20.20,
      images: [
        AppAssets.product4Image,
      ],
      colors: [
        const Color(0xFFF6625E),
        const Color(0xFF836DB8),
        const Color(0xFFDECB9C),
        Colors.white,
      ],
      rating: 2.1,
      isFavourite: true,
      isPopular: false,
    ),
    ProductModel(
      id: 5,
      title: AppStrings.product5Title,
      description: AppStrings.product5Desc,
      price: 45.65,
      images: [
        AppAssets.product5Image,
      ],
      colors: [
        const Color(0xFFF6625E),
        const Color(0xFF836DB8),
        const Color(0xFFDECB9C),
        Colors.white,
      ],
      rating: 4.6,
      isFavourite: false,
      isPopular: false,
    ),
    ProductModel(
      id: 6,
      title: AppStrings.product6Title,
      description: AppStrings.product6Desc,
      price: 12.45,
      images: [
        AppAssets.product6Image,
      ],
      colors: [
        const Color(0xFFF6625E),
        const Color(0xFF836DB8),
        const Color(0xFFDECB9C),
        Colors.white,
      ],
      rating: 2.8,
      isFavourite: false,
      isPopular: false,
    ),
    ProductModel(
      id: 7,
      title: AppStrings.product7Title,
      description: AppStrings.product7Desc,
      price: 70.56,
      images: [
        AppAssets.product7Image,
      ],
      colors: [
        const Color(0xFFF6625E),
        const Color(0xFF836DB8),
        const Color(0xFFDECB9C),
        Colors.white,
      ],
      rating: 5,
      isFavourite: true,
      isPopular: false,
    ),
    ProductModel(
      id: 8,
      title: AppStrings.product8Title,
      description: AppStrings.product8Desc,
      price: 15.65,
      images: [
        AppAssets.product8Image,
      ],
      colors: [
        const Color(0xFFF6625E),
        const Color(0xFF836DB8),
        const Color(0xFFDECB9C),
        Colors.white,
      ],
      rating: 3.1,
      isFavourite: false,
      isPopular: false,
    ),
  ];
}
