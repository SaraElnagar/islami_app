import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/app_colors.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int index = 0;
  List<String> praises = [
    "سبحان الله",
    "الحمد الله",
    "الله اكبر",
    "لا اله الا الله",
    "لا حول و لا قوة الا بالله"
  ];

  int counter = 0;
  double turn = 0.0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
          child: Stack(
            children: [
              Positioned(
                  top: -2,
                  left: 110,
                  child: provider.appTheme == ThemeMode.light
                      ? Image.asset("assets/images/head_sebha.png")
                      : Image.asset("assets/images/dark_head_sebha.png")),
              Container(
                margin: EdgeInsets.only(top: 78),
                child: InkWell(
                  onTap: () {
                    turn += 1 / praises.length;
                    counter++;
                    setState(() {});
                  },
                  child: AnimatedRotation(
                    turns: turn,
                    duration: Duration(seconds: 1),
                    child: provider.appTheme == ThemeMode.light
                        ? Image.asset("assets/images/body_sebha.png")
                        : Image.asset("assets/images/dark_body_sebha.png"),
                  ),
                ),
              ),
            ],
          ),
        ),
        provider.appTheme == ThemeMode.light
            ? Text(
                provider.appLanguage == "en"
                    ? AppLocalizations.of(context)!.number_of_praises
                    : AppLocalizations.of(context)!.number_of_praises,
                style: Theme.of(context).textTheme.bodyMedium,
              )
            : provider.appTheme == ThemeMode.light
                ? Text(
                    provider.appLanguage == "en"
                        ? AppLocalizations.of(context)!.number_of_praises
                        : AppLocalizations.of(context)!.number_of_praises,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: AppColors.blackColor),
                  )
                : Text(
                    provider.appLanguage == "en"
                        ? AppLocalizations.of(context)!.number_of_praises
                        : AppLocalizations.of(context)!.number_of_praises,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: AppColors.whiteColor),
                  ),
        provider.appTheme == ThemeMode.light
            ? Container(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                    vertical: MediaQuery.of(context).size.height * 0.03),
                decoration: BoxDecoration(
                    color: AppColors.beigeColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "$counter",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ))
            : Container(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                    vertical: MediaQuery.of(context).size.height * 0.03),
                decoration: BoxDecoration(
                    color: AppColors.darkBlueColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "$counter",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold, color: AppColors.whiteColor),
                )),
        provider.appTheme == ThemeMode.light
            ? Container(
                padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.02,
              vertical: MediaQuery.of(context).size.height * 0.01),
          decoration: BoxDecoration(
              color: AppColors.primaryLightColor,
              borderRadius: BorderRadius.circular(30)),
          child: Text(
                  "${changePraises(index)}",
                  style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: AppColors.whiteColor),
          ),
              )
            : Container(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.02,
                    vertical: MediaQuery.of(context).size.height * 0.01),
                decoration: BoxDecoration(
                    color: AppColors.yellowColor,
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  "${changePraises(index)}",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold, color: AppColors.whiteColor),
                ),
              ),
      ],
    );
  }

  changePraises(int index) {
    if (counter <= 33) {
      return praises[index];
    } else if (counter <= 66) {
      return praises[index + 1];
    } else if (counter <= 99) {
      return praises[index + 2];
    } else if (counter <= 132) {
      return praises[index + 3];
    } else if (counter <= 165) {
      return praises[index + 4];
    } else {
      counter = 0;
      return praises[index];
    }
  }
}
