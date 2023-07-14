import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_text_styles.dart';
import '../../utils/helper.dart';
import '../widgets/materialBtn.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          buildContactText(),
          SizedBox(height: 40.0),
          Material(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
            elevation: 8,
            child: TextField(
              cursorColor: Colors.white,
              style: AppTextStyle.normalStyle(),
              decoration: buildInputDecoration(hintText: 'Full Name'),
            ),
          ),
          SizedBox(height: 20.0),
          Material(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
            elevation: 8,
            child: TextField(
              cursorColor: Colors.white,
              style: AppTextStyle.normalStyle(),
              decoration: buildInputDecoration(hintText: 'Email Address'),
            ),
          ),
          SizedBox(height: 20.0),
          Material(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
            elevation: 8,
            child: TextField(
              cursorColor: Colors.white,
              style: AppTextStyle.normalStyle(),
              decoration: buildInputDecoration(hintText: 'Mobile Number'),
            ),
          ),
          SizedBox(height: 20.0),
          Material(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
            elevation: 8,
            child: TextField(
              cursorColor: Colors.white,
              style: AppTextStyle.normalStyle(),
              decoration: buildInputDecoration(hintText: 'Email Subject'),
            ),
          ),
          SizedBox(height: 20.0),
          Material(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
            elevation: 8,
            child: TextField(
              maxLines: 15,
              cursorColor: Colors.white,
              style: AppTextStyle.normalStyle(),
              decoration: buildInputDecoration(hintText: 'Your Message'),
            ),
          ),
          SizedBox(height: 40.0),
          MaterialBtn(txt: 'Send Message', onTap: () {}),
          SizedBox(height: 30.0),
        ],
      ),
      tablet: buildForm(),
      desktop: buildForm(),
      paddingWidth: size.width * 0.2,
      bgColor: AppColors.bgColor,
    );
  }

  Column buildForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        buildContactText(),
        SizedBox(height: 40.0),
        Row(
          children: [
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                  cursorColor: Colors.white,
                  style: AppTextStyle.normalStyle(),
                  decoration: buildInputDecoration(hintText: 'Full Name'),
                ),
              ),
            ),
            SizedBox(width: 20.0),
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                  cursorColor: Colors.white,
                  style: AppTextStyle.normalStyle(),
                  decoration: buildInputDecoration(hintText: 'Email Address'),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20.0),
        Row(
          children: [
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                  cursorColor: Colors.white,
                  style: AppTextStyle.normalStyle(),
                  decoration: buildInputDecoration(hintText: 'Mobile Number'),
                ),
              ),
            ),
            SizedBox(width: 20.0),
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                  cursorColor: Colors.white,
                  style: AppTextStyle.normalStyle(),
                  decoration: buildInputDecoration(hintText: 'Email Subject'),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20.0),
        Material(
          borderRadius: BorderRadius.circular(10),
          color: Colors.transparent,
          elevation: 8,
          child: TextField(
            maxLines: 15,
            cursorColor: Colors.white,
            style: AppTextStyle.normalStyle(),
            decoration: buildInputDecoration(hintText: 'Your Message'),
          ),
        ),
        SizedBox(height: 40.0),
        MaterialBtn(txt: 'Send Message', onTap: () {}),
        SizedBox(height: 30.0),
      ],
    );
  }

  FadeInDown buildContactText() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: 'Contact ',
          style: AppTextStyle.headingStyles(fontSize: 30.0),
          children: [
            TextSpan(
              text: 'Me!',
              style: AppTextStyle.headingStyles(
                  fontSize: 30, color: AppColors.robinEdgeBlue),
            )
          ],
        ),
      ),
    );
  }

  InputDecoration buildInputDecoration({required String hintText}) {
    return InputDecoration(
        hintText: hintText,
        hintStyle: AppTextStyle.comfortaaStyle(),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        filled: true,
        fillColor: AppColors.bgColor2,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 24, vertical: 16));
  }
}
