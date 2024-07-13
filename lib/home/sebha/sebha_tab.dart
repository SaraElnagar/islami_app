import 'package:flutter/material.dart';
import 'package:islami_app/app_colors.dart';

class SebhaTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Center(
          child: Image.asset(
            "assets/images/sebha_logo.png",
          ),
        ),
        Text(
          'عدد التسبيحات',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Container(
            // margin: EdgeInsets.only(top: 35),
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
                vertical: MediaQuery.of(context).size.height * 0.03),
            decoration: BoxDecoration(
                color: AppColors.primaryLightColor,
                borderRadius: BorderRadius.circular(25)),
            child: Text(
              "30",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )),
        Container(
          // margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.02,
              vertical: MediaQuery.of(context).size.height * 0.01),
          decoration: BoxDecoration(
              color: AppColors.primaryLightColor,
              borderRadius: BorderRadius.circular(30)),
          child: Text(
            "سبحان الله",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: AppColors.whiteColor),
          ),
        ),
      ],
    );
  }
}
