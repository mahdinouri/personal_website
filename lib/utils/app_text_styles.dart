import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AppTextStyle {
  static TextStyle headerTextStyle() {
    return GoogleFonts.signikaNegative(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.white
    );
  }

 static TextStyle montserratStyle({required Color color}) {
    return GoogleFonts.montserrat(
      color: color,
      fontWeight: FontWeight.w800,
      fontSize: 24
    );
 }

 static TextStyle headingStyle(){
    return GoogleFonts.rubikMoonrocks(
      fontSize: 36,
      letterSpacing: 2,
      fontWeight: FontWeight.w800,
      color: Colors.white,
    );
 }

 static TextStyle noramlStyle(){
    return GoogleFonts.signikaNegative(
      fontSize: 17,
      fontWeight: FontWeight.w500,
      color: Colors.white,
      letterSpacing: 1,
    );
 }
}