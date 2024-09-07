import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../data/model/login_model.dart';
import '../../data/repo/login_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginRepo) : super(LoginInitial());

  late LoginRepo _loginRepo;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();

  Future<void> login(String path, String data) async {
    emit(LoginLoading());
    final result = await _loginRepo.login(path, data);
    result.fold(
      (error) => emit(LoginError(message: error)),
      (success) => emit(LoginSuccess(loginModel: success)),
    );
  }

}
