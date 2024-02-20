import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pixlit_store/common/widgets/images/t_circular_image.dart';
import 'package:pixlit_store/ultils/constants/colors.dart';
import 'package:pixlit_store/ultils/constants/image_strings.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key, required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage(
          image: TImages.user, width: 50, height: 50, padding: 0),
      title: Text('Pixlit',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: TColors.white)),
      subtitle: Text('support@pixlit.com',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .apply(color: TColors.white)),
      trailing: IconButton(
          onPressed: onPressed,
          icon: const Icon(Iconsax.edit, color: TColors.white)),
    );
  }
}
