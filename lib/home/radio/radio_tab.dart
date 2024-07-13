import 'package:flutter/material.dart';

import '../../app_colors.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          "assets/images/radio_logo.png",
        ),
        Text(
          'إذاعة القرآن الكريم',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.skip_previous_sharp),
              color: AppColors.primaryLightColor,
              style: ButtonStyle(iconSize: WidgetStatePropertyAll(35)),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.play_arrow_rounded),
              color: AppColors.primaryLightColor,
              style: ButtonStyle(iconSize: WidgetStatePropertyAll(65)),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.skip_next_sharp),
              color: AppColors.primaryLightColor,
              style: ButtonStyle(iconSize: WidgetStatePropertyAll(35)),
            ),
          ],
        )
      ],
    );
  }
}
