import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/utils/constants/colors.dart';

import '../../../../common/widgets/list_tiles/settings_menu_tile.dart';
import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../../../../utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- Header
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                /// Appbar
                TAppbar(
                  title: Text(
                    "Account",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: TColors.white),
                  ),
                ),

                /// User Profile Card
                const TUserProfileTile(),

                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
              ],
            )),

            /// -- Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// Account settings
                  const TSectionHeading(title: 'Account settings', showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwItems,),

                  TSettingMenuTile(icon: Iconsax.safe_home, title: 'My Address', subTitle: 'Set shopping delivery address', onTap: () {},),
                  TSettingMenuTile(icon: Iconsax.shopping_cart, title: 'My Cart', subTitle: 'Add, remove products and move to checkout', onTap: () {},),
                  TSettingMenuTile(icon: Iconsax.bag_tick, title: 'My Orders', subTitle: 'In-progress and Completes Orders', onTap: () {},),
                  TSettingMenuTile(icon: Iconsax.bank, title: 'Bank Account', subTitle: 'Withdraw balance to registered bank account', onTap: () {},),
                  TSettingMenuTile(icon: Iconsax.discount_shape, title: 'My Coupons', subTitle: 'List of all the discounted coupons', onTap: () {},),
                  TSettingMenuTile(icon: Iconsax.notification, title: 'Notifications', subTitle: 'Set any kind of notifications message', onTap: () {},),
                  TSettingMenuTile(icon: Iconsax.security_card, title: 'Account Privacy', subTitle: 'Manage data usage and connected accounts', onTap: () {},),

                  ///App settings
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  const TSectionHeading(title: 'App settings', showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwItems,),

                  const TSettingMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load data',
                    subTitle: 'Upload Data to your Cloud Firebase',
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set recommention based on locate',
                    trailing: Switch(value: true, onChanged: (value) {},),
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {},),
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subTitle: 'Set images quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {},),
                  ),

                  const SizedBox(width: TSizes.spaceBtwSections,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: () {}, child: const Text('Log out')),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections * 2.5,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
