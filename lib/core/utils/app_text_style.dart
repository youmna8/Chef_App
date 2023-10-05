
import 'package:cheif_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';



TextStyle textStyle({required Color color,required double fontSize,required FontWeight fontWeight}) {
  return GoogleFonts.lato(
    color: color,
    fontSize: fontSize.sp,
    fontWeight: fontWeight
  );
}
// body style
  TextStyle boldStyle({ 
    Color color=AppColors.white,
   double fontSize=24})
   =>textStyle(
    color: color,
    fontSize: fontSize,
     fontWeight: FontWeight.bold);
//regular style
     TextStyle regularStyle({ 
    Color color=AppColors.white,
   double fontSize=24})
   =>textStyle(
    color: color,
    fontSize: fontSize,
     fontWeight: FontWeight.normal);

