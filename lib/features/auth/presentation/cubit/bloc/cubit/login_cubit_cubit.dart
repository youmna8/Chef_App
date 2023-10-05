import 'package:cheif_app/features/auth/data/models/login_model.dart';
import 'package:cheif_app/features/auth/data/reposatory/auth_rep.dart';
import 'package:cheif_app/features/auth/presentation/cubit/bloc/cubit/login_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class LoginCubitCubit extends Cubit<LoginCubitState> {
  LoginCubitCubit(this.authRepo) : super(LoginCubitInitial());
  final AuthRepository authRepo;
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPsswordShowing = true;
  IconData sfficIcon = Icons.visibility;
  void changeLoginPswword() {
    isPsswordShowing = !isPsswordShowing;
    sfficIcon = isPsswordShowing ? Icons.visibility : Icons.visibility_off;
    emit(ChangeLoginPassword());
  }

  LoginModel? loginModel;
  void login() async {
    emit(LoginLoadingState());
    final result = await authRepo.login(
        email: emailController.text, password: passwordController.text);
    result.fold((l) => emit(LoginErrorState(l)), (r) {
      loginModel = r;
      emit(LoginSucessState());
    });
  }
}
