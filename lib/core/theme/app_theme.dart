import 'package:cheif_app/core/utils/app_colors.dart';
import 'package:cheif_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

ThemeData getAppTheme() {
  return ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor:AppColors.primary ,
      
    ),
    textTheme: TextTheme(
      displayLarge: boldStyle(),
      displayMedium: regularStyle()
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)
          
        ),
        
      )
      
    ),

    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8)
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8)
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8)
      ),
      hintStyle: boldStyle(color: AppColors.grey,fontSize: 16),
       
    )
  );
}
