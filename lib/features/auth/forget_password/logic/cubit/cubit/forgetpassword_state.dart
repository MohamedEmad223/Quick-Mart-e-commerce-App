part of 'forgetpassword_cubit.dart';

@immutable
sealed class ForgetpasswordState {}

final class ForgetpasswordInitial extends ForgetpasswordState {}

final class ForgetpasswordLoading extends ForgetpasswordState {}

final class ForgetpasswordSuccess extends ForgetpasswordState {
  final ForgetPasswordModel? forgetPasswordModel;

  ForgetpasswordSuccess({this.forgetPasswordModel});
}

final class ForgetpasswordError extends ForgetpasswordState {
  final String? message;

  ForgetpasswordError({this.message});
}
