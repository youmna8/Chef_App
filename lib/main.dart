import 'package:cheif_app/app/app.dart';
import 'package:cheif_app/core/bloc/cubit/global_cubit.dart';
import 'package:cheif_app/core/database/cache/Cache_Helper.dart';
import 'package:cheif_app/core/services/service.dart';
import 'package:cheif_app/features/auth/presentation/cubit/bloc/cubit/login_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initServiceIndicator();
  await sl<CacheHelper>().init();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
    create: (context) => sl<GlobalCubit>()..getCachedLang(),

  ),
  BlocProvider(
    create: (context) => sl<LoginCubitCubit>(),
   ) ], 
    child: MyApp(),
  ));
}
