import 'package:flutter/material.dart';
import 'package:pixlit_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:pixlit_store/ultils/constants/sizes.dart';

import 'widgets/product_image_slider.dart';
import 'widgets/rating_and_share.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - ProductImage Slider
            TProductImageSlider(),

            /// 2 - Product Details
            Padding(
              padding: EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  /// Rating & Share Button
                  TRatingAndShare(),

                  /// Price, Title, Stock & Brand
                  TProductMetaData(),

                  /// Attributes
                  /// Checkout Button
                  /// Description
                  /// Reviews
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
