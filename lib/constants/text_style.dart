import 'package:bmi_calculator/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static Locale _locale = const Locale('en');

  static void currentLan(BuildContext context, Locale locale) {
    _locale = locale;
  }

  static TextStyle get headLine => _locale.languageCode == 'en'
      ? GoogleFonts.sairaSemiCondensed(
          fontSize: 28.sp,
          fontWeight: FontWeight.w600,
          color: MyColors.myBlue,
        )
      : GoogleFonts.amiri(
          fontSize: 28.sp,
          fontWeight: FontWeight.w600,
          color: MyColors.myBlue,
        );

  static TextStyle get headLine2 => _locale.languageCode == 'en'
      ? GoogleFonts.sairaSemiCondensed(
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
          color: MyColors.myBlue,
        )
      : GoogleFonts.amiri(
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
          color: MyColors.myBlue,
        );

  static TextStyle get bodyText => _locale.languageCode == 'en'
      ? GoogleFonts.sairaSemiCondensed(
          fontSize: 20.sp,
          fontWeight: FontWeight.w400,
          color: MyColors.myGrey,
        )
      : GoogleFonts.amiri(
          fontSize: 20.sp,
          fontWeight: FontWeight.w400,
          color: MyColors.myGrey,
        );

  static TextStyle whiting(TextStyle textStyle) {
    return textStyle.copyWith(color: MyColors.myWhite);
  }
}