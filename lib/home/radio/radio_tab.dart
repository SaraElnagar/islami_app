import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

import '../../app_colors.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          "assets/images/radio_logo.png",
        ),
        provider.appTheme == ThemeMode.light
            ? Text(
                provider.appLanguage == "en"
                    ? AppLocalizations.of(context)!.quran_radio
                    : AppLocalizations.of(context)!.quran_radio,
                style: Theme.of(context).textTheme.bodyMedium,
              )
            : Text(
                provider.appLanguage == "en"
                    ? AppLocalizations.of(context)!.quran_radio
                    : AppLocalizations.of(context)!.quran_radio,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: AppColors.whiteColor),
              ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            provider.appTheme == ThemeMode.light
                ? IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.skip_previous_sharp),
                    color: AppColors.primaryLightColor,
                    style: ButtonStyle(iconSize: WidgetStatePropertyAll(35)),
                  )
                : IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.skip_previous_sharp),
                    color: AppColors.yellowColor,
                    style: ButtonStyle(iconSize: WidgetStatePropertyAll(35)),
                  ),
            provider.appTheme == ThemeMode.light
                ? IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.play_arrow_rounded),
                    color: AppColors.primaryLightColor,
                    style: ButtonStyle(iconSize: WidgetStatePropertyAll(35)),
                  )
                : IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.play_arrow_rounded),
                    color: AppColors.yellowColor,
                    style: ButtonStyle(iconSize: WidgetStatePropertyAll(65)),
                  ),
            provider.appTheme == ThemeMode.light
                ? IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.skip_previous_sharp),
                    color: AppColors.primaryLightColor,
                    style: ButtonStyle(iconSize: WidgetStatePropertyAll(35)),
                  )
                : IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.skip_next_sharp),
                    color: AppColors.yellowColor,
                    style: ButtonStyle(iconSize: WidgetStatePropertyAll(35)),
                  ),
          ],
        )
      ],
    );
  }
}
