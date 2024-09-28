import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/features/auth/forget_password/data/model/reset_password_model.dart';
import 'package:quick_mart/features/auth/forget_password/data/repo/forget_password_repo.dart';

import '../../../data/model/forget_password_model.dart';
import '../../../data/model/verify_code_model.dart';
import '../../../data/repo/verify_code_repo.dart';

part 'forgetpassword_state.dart';

class ForgetpasswordCubit extends Cubit<ForgetpasswordState> {
  ForgetpasswordCubit(this._forgetPasswordRepo,this._verifyCodeRepo) : super(ForgetpasswordInitial());
final TextEditingController emailController = TextEditingController();

 final ForgetPasswordRepo _forgetPasswordRepo;

  Future<void> forgetPassword(String path, Map<String, dynamic> data) async {
    emit(ForgetpasswordLoading());
    final result = await _forgetPasswordRepo.forgetPassword(path, data);
    result.fold(
      (error) => emit(ForgetpasswordError(message: error)),
      (success) => emit(ForgetpasswordSuccess(forgetPasswordModel: success)),
    );
  }

  final TextEditingController codeController = TextEditingController();

  final VerifyCodeRepo _verifyCodeRepo;

  Future<void> verifyCode(String path, Map<String, dynamic> data) async {
    emit(VerifycodeLoading());
    final result = await _verifyCodeRepo.verifyCode(path, data);
    result.fold(
      (error) => emit(VerifycodeError(message: error)),
      (success) => emit(VerifycodeSuccess(verfiyResetCodeModel: success)),
    );
  }
}
