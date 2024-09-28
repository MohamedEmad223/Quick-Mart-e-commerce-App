part of 'forgetpassword_cubit.dart';


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

final class VerifycodeInitial extends ForgetpasswordState {}

final class VerifycodeLoading extends ForgetpasswordState {}

final class VerifycodeSuccess extends ForgetpasswordState {
  final VerfiyResetCodeModel? verfiyResetCodeModel;

  VerifycodeSuccess({this.verfiyResetCodeModel});
}

final class VerifycodeError extends ForgetpasswordState {
  final String? message;

  VerifycodeError({this.message});
}

final class CreatePasswordInitial extends ForgetpasswordState {}

final class CreatePasswordLoading extends ForgetpasswordState {}

final class CreatePasswordSuccess extends ForgetpasswordState {
  final ResetPasswordModel? resetPasswordModel;

  CreatePasswordSuccess({this.resetPasswordModel});
}

final class CreatePasswordError extends ForgetpasswordState {
  final String? message;

  CreatePasswordError({this.message});
}

