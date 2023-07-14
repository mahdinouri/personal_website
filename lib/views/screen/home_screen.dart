// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:personal_website/utils/app_assets.dart';
import 'package:personal_website/utils/app_colors.dart';
import 'package:personal_website/utils/app_text_styles.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animate_do/animate_do.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        toolbarHeight: 90,
        titleSpacing: 100,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Row(
            children: [
              const Text("Portfolio"),
              const Spacer(),
              Text(
                "Home",
                style: AppTextStyle.headerTextStyle(),
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                "About",
                style: AppTextStyle.headerTextStyle(),
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                "Services",
                style: AppTextStyle.headerTextStyle(),
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                "Portfolio",
                style: AppTextStyle.headerTextStyle(),
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                "Contact",
                style: AppTextStyle.headerTextStyle(),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: size.height * 0.3,
          right: size.width * 0.2,
          left: size.width * 0.2,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeInDown(
                      duration: const Duration(milliseconds: 1200),
                      child: Text(
                        'Hello It\'s Me',
                        style: AppTextStyle.montserratStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    FadeInRight(
                      duration: const Duration(milliseconds: 1400),
                      child: Text(
                        'MAHDI NOURI',
                        style: AppTextStyle.headingStyle(),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    FadeInLeft(
                      duration: const Duration(milliseconds: 1400),
                      child: Row(
                        children: [
                          Text(
                            'I\'m a ',
                            style:
                            AppTextStyle.montserratStyle(color: Colors.white),
                          ),
                          AnimatedTextKit(
                            animatedTexts: [
                              TyperAnimatedText(
                                'Flutter Developer',
                                textStyle: AppTextStyle.montserratStyle(
                                    color: Colors.lightBlue),
                              ),
                              TyperAnimatedText(
                                'Mobile Developer',
                                textStyle: AppTextStyle.montserratStyle(
                                    color: Colors.lightBlue),
                              ),
                              TyperAnimatedText(
                                'FrontEnd Developer',
                                textStyle: AppTextStyle.montserratStyle(
                                    color: Colors.lightBlue),
                              ),
                              TyperAnimatedText(
                                'Freelancer',
                                textStyle: AppTextStyle.montserratStyle(
                                    color: Colors.lightBlue),
                              ),
                            ],
                            pause: const Duration(milliseconds: 1000),
                            displayFullTextOnTap: true,
                            stopPauseOnTap: true,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    FadeInDown(
                      duration: const Duration(milliseconds: 1600),
                      child: SizedBox(
                        width: size.width * 0.5,
                        child: Text(
                          "Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.",
                          style: AppTextStyle.noramlStyle(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    FadeInUp(
                      duration: const Duration(milliseconds: 1600),
                      child: Row(
                        children: [
                          buildSocialButton(asset: "assets/images.github.png"),
                          const SizedBox(
                            width: 12,
                          ),
                          buildSocialButton(asset: "assets/images.github.png"),
                          const SizedBox(
                            width: 12,
                          ),
                          buildSocialButton(asset: "assets/images.github.png"),
                          const SizedBox(
                            width: 12,
                          ),
                          buildSocialButton(asset: "assets/images.github.png"),
                          const SizedBox(
                            width: 12,
                          ),
                          buildSocialButton(asset: "assets/images.github.png"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    FadeInUp(
                      duration: const Duration(milliseconds: 1800),
                      child: buildMaterialButton(onTap: (){}),),
                  ],
                ),
                const SizedBox(width: 20,),
                Image.asset(AppAssets.profile1 , width: 360, height: 390,),
              ],
            )
          ],
        ),
      ),
    );
  }

  MaterialButton buildMaterialButton({
    required VoidCallback onTap
}) {
    return MaterialButton(
      onPressed: onTap,
      color: AppColors.themeColor,
      splashColor: AppColors.lawGreen,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
      hoverColor: AppColors.aqua,
      elevation: 6,
      focusElevation: 12,
      height: 46,
      minWidth: 130,
      child: Text("Download CV", style: AppTextStyle.headerTextStyle()),
    );
  }

  Ink buildSocialButton({required String asset}) {
    return Ink(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.themeColor, width: 2.0),
          color: AppColors.bgColor,
          shape: BoxShape.circle),
      padding: const EdgeInsets.all(6),
      child: InkWell(
        onTap: () {},
        radius: 50,
        borderRadius: BorderRadius.circular(500.0),
        splashColor: AppColors.lawGreen,
        hoverColor: AppColors.aqua,
        child: Image.asset(
          asset,
          width: 10,
          height: 12,
          color: AppColors.themeColor,
          // fit: BoxFit.fill,
        ),
      ),
    );
  }
}
