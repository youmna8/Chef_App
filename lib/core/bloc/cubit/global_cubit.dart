// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:cheif_app/core/bloc/cubit/global_state.dart';
import 'package:cheif_app/core/database/cache/Cache_Helper.dart';
import 'package:cheif_app/core/services/service.dart';

class GlobalCubit extends Cubit<GlobalState> {
  GlobalCubit() : super(GlobalInitial());

  String LangCode = 'ar';

  void changeLan(String CodeLang) async {
    emit(ChangeLangLoading());

    LangCode = CodeLang;
    await sl<CacheHelper>().cacheLanguage(CodeLang);
    emit(ChangeLangSuccess());
  }

  void getCachedLang() {
    emit(ChangeLangLoading());
    final CachedLang = sl<CacheHelper>().getCachedLanguage();
    LangCode = CachedLang;
    emit(ChangeLangSuccess());
  }
}
