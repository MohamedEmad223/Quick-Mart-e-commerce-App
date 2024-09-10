import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:quick_mart/features/auth/login/data/model/sign_up_model.dart';

import '../../data/model/login_model.dart';
import '../../data/repo/login_repo.dart';
import '../../data/repo/sign_up_repo.dart';

part 'Auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._loginRepo,this._signUpRepo) : super(AuthInitial());

   final LoginRepo _loginRepo;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> login(String path, Map<String,dynamic> data) async {
    emit(LoginLoading());
    final result = await _loginRepo.login(path, data);
    result.fold(
      (error) => emit(LoginError(message: error)),
      (success) => emit(LoginSuccess(loginModel: success)),
    );
  }

   final SignUpRepo _signUpRepo;

  Future<void> signUp(String path, Map<String,dynamic> data) async {
    emit(SignUpLoading());
    final result = await _signUpRepo.signUp(path, data);
    result.fold(
      (error) => emit(SignUpError(message: error)),
      (success) => emit(SignUpSuccess(signUpModel: success)),
    );
  }

}
