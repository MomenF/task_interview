import 'package:flutter/material.dart';
import 'package:task_interview/Constants/colors.dart';

class Themes {

  static ThemeData data(){
    return ThemeData(
      primaryColor: ColorConstant.greenSplash,
      scaffoldBackgroundColor: ColorConstant.backgroundColor,
      appBarTheme: AppBarTheme(
        color: ColorConstant.greenSplash,
        titleTextStyle: TextStyle(color: ColorConstant.mediumSwitch,fontSize: 18.0)
      ),
      textTheme: TextTheme(
        bodyText1: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w600
        ),
        headline6: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w600
        ),
      )
    );
  }
}