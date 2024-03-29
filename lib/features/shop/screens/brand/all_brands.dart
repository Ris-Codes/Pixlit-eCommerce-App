import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pixlit_store/common/widgets/appbar/appbar.dart';
import 'package:pixlit_store/common/widgets/brands/brand_card.dart';
import 'package:pixlit_store/common/widgets/layouts/grid_layout.dart';
import 'package:pixlit_store/common/widgets/texts/section_heading.dart';
import 'package:pixlit_store/features/shop/screens/brand/brand_products.dart';
import 'package:pixlit_store/ultils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Brands'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Heading
              const TSectionHeading(title: 'Brands', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Brands
              TGridLayout(
                itemCount: 10,
                mainAxisExtend: 80,
                itemBuilder: (context, index) => TBrandCard(
                  showBorder: true,
                  onTap: () => Get.to(() => const BrandProducts()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
