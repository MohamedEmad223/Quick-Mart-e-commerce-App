part of 'Auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class LoginLoading extends AuthState {}

final class LoginSuccess extends AuthState {
  final LoginModel? loginModel;

  LoginSuccess({this.loginModel});
}

final class LoginError extends AuthState {
  final String? message;

  LoginError({this.message});
}

final class SignUpLoading extends AuthState {}

final class SignUpSuccess extends AuthState {
  final SignUpModel? signUpModel;

  SignUpSuccess({this.signUpModel});
}

final class SignUpError extends AuthState {
  final String? message;

  SignUpError({this.message});
}