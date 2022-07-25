import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_chat_app_ui/Util/colors.dart';

const kDefaultPadding = 20.0;
const appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);
ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
      primaryColor: kPrimaryColor,
      scaffoldBackgroundColor: kPrimaryColor,
      appBarTheme: appBarTheme,
      iconTheme: const IconThemeData(color: kContentdarkColor),
      textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme).apply(
        bodyColor: kContentLightColor,
      ),
      colorScheme: const ColorScheme.light(
        primary: kPrimaryColor,
        secondary: kSecondaryColor,
        error: kErrorColor,
      ));
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kContentdarkColor,
    appBarTheme: appBarTheme,
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme).apply(
      bodyColor: kContentLightColor,
    ),
    iconTheme: const IconThemeData(color: kContentdarkColor),
    colorScheme: const ColorScheme.light(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kErrorColor,
    ),
  );
}
