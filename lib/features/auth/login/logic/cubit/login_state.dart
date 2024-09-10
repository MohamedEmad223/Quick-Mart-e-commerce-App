part of 'login_cubit.dart';

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