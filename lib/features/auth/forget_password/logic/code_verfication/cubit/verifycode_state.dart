part of 'verifycode_cubit.dart';


sealed class VerifycodeState {}

final class VerifycodeInitial extends VerifycodeState {}

final class VerifycodeLoading extends VerifycodeState {}

final class VerifycodeSuccess extends VerifycodeState {
  final VerfiyResetCodeModel? verfiyResetCodeModel;

  VerifycodeSuccess({this.verfiyResetCodeModel});
}

final class VerifycodeError extends VerifycodeState {
  final String? message;

  VerifycodeError({this.message});
}
