
import 'package:cheif_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void Navigate({required BuildContext context ,required String route,dynamic arg}) {
  Navigator.pushNamed(context, route,arguments:arg);
}
void showToast({required String msg,required ToastStates state}){
  
  Fluttertoast.showToast(
                  msg: msg,
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: getState(state),
                  //textColor: AppColors.text,
                  fontSize: 16
                );
}
enum ToastStates{error,success,warning}
Color getState(ToastStates state){
  switch(state){
   case ToastStates.error: return AppColors.red;
    case ToastStates.success: return AppColors.primary;
    case ToastStates.warning: return AppColors.yellow;

  }
}