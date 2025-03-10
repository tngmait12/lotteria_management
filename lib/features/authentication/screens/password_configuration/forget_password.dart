import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: dark ? TColors.grey : TColors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Headings
            Text(TTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(TTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: TSizes.spaceBtwSections * 2),
            /// Text Field
            TextFormField(
              decoration: const InputDecoration(labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
            /// Submit Button
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.off(() => const ResetPassword()), child: const Text(TTexts.submit))),
          ],
        ),
      ),
    );
  }
}
