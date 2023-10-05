import 'package:cheif_app/core/bloc/cubit/global_cubit.dart';
import 'package:cheif_app/core/bloc/cubit/global_state.dart';
import 'package:cheif_app/core/locale/local.dart';
import 'package:cheif_app/core/routes/app_routes.dart';
import 'package:cheif_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) =>
          BlocBuilder<GlobalCubit, GlobalState>(builder: (context, state) {
        return MaterialApp(
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            AppLocalizations.delegate
          ],
          locale: Locale(BlocProvider.of<GlobalCubit>(context).LangCode),
          supportedLocales: const [Locale('ar', "EG"), Locale('en', "US")],
          theme: getAppTheme(),
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.intialRoute,
          onGenerateRoute: AppRotes.generateRoutes,
        );
      }),
    );
  }
}
