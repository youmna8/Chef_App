import 'package:cheif_app/core/locale/local.dart';
import 'package:cheif_app/core/utils/app_assets.dart';
import 'package:cheif_app/core/utils/app_colors.dart';
import 'package:cheif_app/core/utils/app_strings.dart';
import 'package:cheif_app/core/utils/commons.dart';
import 'package:cheif_app/core/widgets/TextFormFeild.dart';
import 'package:cheif_app/core/widgets/button.dart';
import 'package:cheif_app/core/widgets/image.dart';
import 'package:cheif_app/core/widgets/loading_indicator.dart';
import 'package:cheif_app/features/auth/presentation/cubit/bloc/cubit/login_cubit_cubit.dart';
import 'package:cheif_app/features/auth/presentation/cubit/bloc/cubit/login_cubit_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              const CustomImagge(
                imgPath: AppAssets.custom,
                width: double.infinity,
              ),
              Center(
                child: Text(
                  AppStrings.welcomeBack.tr(context),
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              )
            ],
          ),
          SizedBox(
            height: 100.h,
          ),
          Padding(
              padding: EdgeInsets.all(24),
              child: BlocConsumer<LoginCubitCubit, LoginCubitState>(
                listener: (context, state) {
                  if (state is LoginSucessState) {
                    showToast(
                        msg: AppStrings.loginSucessfully.tr(context),
                        state: ToastStates.success);
                  }
                  if (state is LoginErrorState) {
                     showToast(
                        msg: state.message ,
                        state: ToastStates.error);
                  }
                },
                builder: (context, state) {
                  return Form(
                      key: BlocProvider.of<LoginCubitCubit>(context).loginKey,
                      child: Column(
                        children: [
                          CustomTextForm(
                            validate: (data) {
                              if (data!.isEmpty ||
                                  !data.contains('@gmail.com')) {
                                return AppStrings.pleaseEnterValidEmail
                                    .tr(context);
                              }
                              return null;
                            },
                            hintText: AppStrings.email.tr(context),
                            controller:
                                BlocProvider.of<LoginCubitCubit>(context)
                                    .emailController,
                            onpressed: () {},
                            label: AppStrings.email.tr(context),
                          ),
                          SizedBox(
                            height: 32.h,
                          ),
                          CustomTextForm(
                            hintText: AppStrings.password,
                            controller:
                                BlocProvider.of<LoginCubitCubit>(context)
                                    .passwordController,
                            label: AppStrings.password.tr(context),
                            isPassword: true,
                            validate: (data) {
                              if (data!.length < 6 || data.isEmpty) {
                                return AppStrings.pleaseEnterValidPassword
                                    .tr(context);
                              }
                              return null;
                            },
                            icon: BlocProvider.of<LoginCubitCubit>(context)
                                .sfficIcon,
                            onpressed: () {
                              BlocProvider.of<LoginCubitCubit>(context)
                                  .changeLoginPswword();
                            },
                          ),
                          SizedBox(
                            height: 24.h,
                          ),
                          Row(
                            children: [
                              Text(AppStrings.forgetPassword.tr(context))
                            ],
                          ),
                          SizedBox(
                            height: 64.h,
                          ),
                          state is LoginLoadingState
                              ? const LoadingIndicator()
                              : CustomButton(
                                  onpressed: () {
                                    if (BlocProvider.of<LoginCubitCubit>(
                                            context)
                                        .loginKey
                                        .currentState!
                                        .validate()) {
                                      BlocProvider.of<LoginCubitCubit>(context)
                                          .login();
                                      ;
                                    }
                                  },
                                  txt: AppStrings.signIn.tr(context)),
                          SizedBox(
                            height: 32.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                AppStrings.dontHaveAnAccount.tr(context),
                              ),
                              Text(
                                AppStrings.signUp.tr(context),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        color: AppColors.primary, fontSize: 13),
                              )
                            ],
                          )
                        ],
                      ));
                },
              ))
        ],
      ),
    )));
  }
}
