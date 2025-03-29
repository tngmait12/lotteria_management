import 'package:flutter/material.dart';

import '../../../features/shop/screens/store/widgets/brand_card.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/rounded_container.dart';


class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key, required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding:  const EdgeInsets.all(TSizes.md),
      margin:  const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          /// Brand with Product Count
          const TBrandCard(showBorder: false),
          /// Brand top 3 Product Images
          Row(
            children: images.map((image) => brandTopProductImage(image, context)).toList(),
          )
        ],
      ),
    );
  }

  Widget brandTopProductImage(String image, context){
    return Expanded(
      child: TRoundedContainer(
        height: 100,
        backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkGrey : TColors.light,
        margin: const EdgeInsets.only(right: TSizes.sm),
        padding: const EdgeInsets.all(TSizes.md),
        child: Image(fit: BoxFit.contain,image: AssetImage(image)),
      ),
    );
  }
}