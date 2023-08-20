import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/components/widgets/product_details/product_small_preview.dart';

import '../../../config/app_size_config.dart';
import '../../../models/product_model.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: AppSizeConfig.getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.product.images[selectedImage]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              widget.product.images.length,
              (index) => ProductSmallPreview(
                product: widget.product,
                index: index,
                onTap: () {
                  setState(() {
                    selectedImage = index;
                  });
                },
                selectedImage: selectedImage,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
