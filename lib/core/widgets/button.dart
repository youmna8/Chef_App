import 'package:cheif_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.height = 48,
      this.width = double.infinity,
      required this.onpressed,
      this.background, required this.txt});
  final double? height;
  final double? width;
  final VoidCallback onpressed;
  final Color? background;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height!.h,
        width: width!.w,
        child: ElevatedButton(
          style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
              backgroundColor:
                  MaterialStateProperty.all(background ?? AppColors.primary)),
          onPressed: onpressed,
          child: Text(
            txt,
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ));
  }
}
