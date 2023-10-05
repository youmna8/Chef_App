import 'package:cheif_app/core/bloc/cubit/global_cubit.dart';
import 'package:cheif_app/core/database/api/api_consumer.dart';
import 'package:cheif_app/core/database/api/dio_consumer.dart';
import 'package:cheif_app/core/database/cache/Cache_Helper.dart';
import 'package:cheif_app/features/auth/data/reposatory/auth_rep.dart';
import 'package:cheif_app/features/auth/presentation/cubit/bloc/cubit/login_cubit_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;
void initServiceIndicator() {
  sl.registerLazySingleton(() => GlobalCubit());
  sl.registerLazySingleton(() => CacheHelper());
  sl.registerLazySingleton(() => LoginCubitCubit(sl()));
  sl.registerLazySingleton(() => AuthRepository());
  sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(sl()));
  sl.registerLazySingleton(() => Dio());
}
