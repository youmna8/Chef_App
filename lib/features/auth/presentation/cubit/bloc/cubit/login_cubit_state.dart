sealed class LoginCubitState {}

final class LoginCubitInitial extends LoginCubitState {}

final class ChangeLoginPassword extends LoginCubitState {}

final class LoginLoadingState extends LoginCubitState {}

final class LoginSucessState extends LoginCubitState {}

final class LoginErrorState extends LoginCubitState {
  final String message;
  LoginErrorState(this.message);
}
