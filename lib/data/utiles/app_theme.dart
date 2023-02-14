import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../data/utiles/app_colors.dart';

class AppThemeStyle{
  static ThemeData darkTheme = ThemeData(
    accentColor: Colors.red,
    brightness: Brightness.dark,  primarySwatch: Colors.purple ,
    primaryColor: AppColors.colorC0E7D1Green,
    // appBarTheme: AppBarTheme(
    //     iconTheme: IconThemeData(color: AppColors.white),
    //     color: AppColors.purpel824BAB,
    //     systemOverlayStyle: SystemUiOverlayStyle( //<-- SEE HERE
    //      // Status bar color
    //      statusBarColor: AppColors.purpel824BAB,
    //      // statusBarIconBrightness: Brightness.dark,
    //      // statusBarBrightness: Brightness.light,
    //     ),
    //
    // )
  );

  static ThemeData lightTheme = ThemeData(
    accentColor: Colors.pink,
    primarySwatch: Colors.purple,

    brightness: Brightness.light,
    primaryColor: AppColors.colorC0E7D1Green,
    //     appBarTheme: AppBarTheme(
    // iconTheme: IconThemeData(color: AppColors.white),
    //     color: AppColors.purpel824BAB,
    // systemOverlayStyle: SystemUiOverlayStyle( //<-- SEE HERE
    // // Status bar color
    // statusBarColor: AppColors.purpel824BAB,
    // // statusBarIconBrightness: Brightness.dark,
    // // statusBarBrightness: Brightness.light,
    // ),)
  );

}