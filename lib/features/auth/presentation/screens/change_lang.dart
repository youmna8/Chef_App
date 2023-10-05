import 'package:cheif_app/core/bloc/cubit/global_cubit.dart';
import 'package:cheif_app/core/bloc/cubit/global_state.dart';
import 'package:cheif_app/core/locale/local.dart';
import 'package:cheif_app/core/utils/app_assets.dart';
import 'package:cheif_app/core/utils/app_colors.dart';
import 'package:cheif_app/core/utils/app_strings.dart';
import 'package:cheif_app/core/widgets/button.dart';
import 'package:cheif_app/core/widgets/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CangeLangScreen extends StatelessWidget {
  const CangeLangScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          CustomImagge(
            imgPath: AppAssets.bg,
            width: double.infinity,
          ),
          Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                children: [
                  SizedBox(
                    height: 16.h,
                  ),
                  CustomImagge(
                    imgPath: AppAssets.appLogo,
                    heigh: 120.h,
                    width: 120.w,
                  ),
                  Text(
                    AppStrings.welcomeToChefApp.tr(context),
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  SizedBox(
                    height: 54.h,
                  ),
                  Text(
                    AppStrings.pleaseChooseYourLanguage.tr(context),
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(fontSize: 23),
                  ),
                  SizedBox(
                    height: 120.h,
                  ),
                  BlocBuilder<GlobalCubit, GlobalState>(
                      builder: (context, state) {
                    return Row(
                      children: [
                        CustomButton(
                          onpressed: () {
                            BlocProvider.of<GlobalCubit>(context).changeLan('en');
                          },
                          txt: ('English'),
                          width: 140,
                          background: AppColors.black,
                        ),
                        const Spacer(),
                        CustomButton(
                          onpressed: () {
                            BlocProvider.of<GlobalCubit>(context).changeLan('ar');
                          },
                          txt:('العربيه'),
                          width: 140,
                          background: AppColors.black,
                        )
                      ],
                    );
                  })
                ],
              ))
        ],
      ),
    ));
  }
}
