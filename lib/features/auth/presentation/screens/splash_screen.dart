import 'package:cheif_app/core/locale/local.dart';
import 'package:cheif_app/core/routes/app_routes.dart';
import 'package:cheif_app/core/utils/app_assets.dart';
import 'package:cheif_app/core/utils/app_colors.dart';
import 'package:cheif_app/core/utils/app_strings.dart';
import 'package:cheif_app/core/utils/commons.dart';
import 'package:cheif_app/core/widgets/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigate();
    super.initState();
  }

  void navigate() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigate(context: context, route: Routes.changelan);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImagge(imgPath: AppAssets.appLogo,heigh: 120.h,width: 120.w,),
          
         
          Text(
            AppStrings.chefApp.tr(context),
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColors.black),
          )
        ],
      )),
    );
  }
}
