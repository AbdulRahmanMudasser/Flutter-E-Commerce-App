import 'package:flutter/material.dart';

import '../../../../config/app_size_config.dart';
import '../../../../models/categories_model.dart';
import 'category_card.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizeConfig.getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            CategoriesModel.categories.length,
            (index) {
              return CategoryCard(
                icon: CategoriesModel.categories[index].icon,
                text: CategoriesModel.categories[index].category,
                onTap: () {},
              );
            },
          ),
        ],
      ),
    );
  }
}
