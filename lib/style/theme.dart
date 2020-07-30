import 'package:flutter/material.dart';
import 'colors.dart' as colors;

ThemeData buildTravelTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    primaryColor: colors.primaryColor,
    accentColor: colors.accentColor,
    errorColor: colors.errorColor,
    // widget colors
    // buttonColor: Colors.black,
    scaffoldBackgroundColor: Colors.transparent,
    bottomAppBarColor: colors.backgroundColor,

    //text theme
    textTheme: _builldTextTheme(base.textTheme),
    primaryTextTheme: _builldTextTheme(base.primaryTextTheme),
    accentTextTheme: _builldTextTheme(base.accentTextTheme),

    //widget theme
    primaryIconTheme: base.iconTheme.copyWith(color: Colors.white),

    iconTheme: base.iconTheme.copyWith(color: colors.primaryColor),

    appBarTheme: base.appBarTheme.copyWith(
      color: Colors.transparent,
    ),

    buttonTheme: ButtonThemeData(
      buttonColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    ),
  );
}

TextTheme _builldTextTheme(TextTheme base) {
  return base.copyWith(
    headline3: base.headline3.copyWith(
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
    headline6: base.headline6.copyWith(
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
    bodyText1: base.headline6.copyWith(
      color: Colors.white,
    ),
    bodyText2: base.headline6.copyWith(
      color: Colors.white,
    ),
  );
}
