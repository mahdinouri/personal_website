import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/utils/app_assets.dart';
import 'package:personal_website/utils/app_colors.dart';

import '../../utils/app_text_styles.dart';
import '../widgets/materialBtn.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: AppColors.bgColor2,
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FadeInRight(
            duration: const Duration(milliseconds: 1200),
            child: Image.asset(
              AppAssets.profile2,
              height: 450,
              width: 400,
            ),
          ),
          const SizedBox(
            width: 25,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                FadeInRight(
                  duration: const Duration(milliseconds: 1200),
                  child: RichText(
                    text: TextSpan(
                        text: "About",
                        style: AppTextStyle.headingStyles(),
                        children: [
                          TextSpan(
                              text: "Me",
                              style: AppTextStyle.headingStyles(
                                  color: AppColors.robinEdgeBlue)),
                        ]),
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                FadeInLeft(
                  duration: const Duration(milliseconds: 1400),
                  child: Text(
                    "Flutter Developer!",
                    style: AppTextStyle.montserratStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                FadeInLeft(
                  duration: const Duration(milliseconds: 1600),
                  child: Text(
                    "Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.",
                    style: AppTextStyle.normalStyle(),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                FadeInUp(
                  duration: const Duration(milliseconds: 1800),
                  child: MaterialBtn(onTap: () {}, txt: "Read More"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
