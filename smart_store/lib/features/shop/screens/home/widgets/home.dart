import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smart_store/common/widgets/custom_shapes/appbar/appbar.dart';

import '../../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text.strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(
                    title: Column(
                      children: [
                        Text(
                          TTexts.homeAppbarTitle,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .apply(color: TColors.grey),
                        ),
                        Text(
                          TTexts.homeAppbarTitle,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .apply(color: TColors.white),
                        ),
                      ],
                    ),
                    actions: [
                      TCartCounterIcon(
                        onPressed: () {},
                        iconColor: TColors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Add other widgets as needed
          ],
        ),
      ),
    );
  }
}

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    Key? key,
    required this.onPressed,
    required this.iconColor,
  }) : super(key: key);

  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: const Icon(Iconsax.shopping_bag, color: TColors.white),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: TColors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.white, fontSizeFactor: 0.8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}