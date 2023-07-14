import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_text_styles.dart';

class MaterialBtn extends StatefulWidget {
  final VoidCallback onTap;
  final String txt;
  const MaterialBtn({super.key ,
    required this.onTap,
    required this.txt
  });

  @override
  State<MaterialBtn> createState() => _MaterialBtnState();
}

class _MaterialBtnState extends State<MaterialBtn> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: widget.onTap,
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
      child: Text(widget.txt, style: AppTextStyle.headerTextStyle()),
    );
  }
}
