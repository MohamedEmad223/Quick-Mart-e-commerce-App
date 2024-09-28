import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/features/auth/forget_password/data/repo/forget_password_repo.dart';

import '../../../data/model/forget_password_model.dart';

part 'forgetpassword_state.dart';

class ForgetpasswordCubit extends Cubit<ForgetpasswordState> {
  ForgetpasswordCubit(this._forgetPasswordRepo) : super(ForgetpasswordInitial());

 final ForgetPasswordRepo _forgetPasswordRepo;

  Future<void> forgetPassword(String path, Map<String, dynamic> data) async {
    emit(ForgetpasswordLoading());
    final result = await _forgetPasswordRepo.forgetPassword(path, data);
    result.fold(
      (error) => emit(ForgetpasswordError(message: error)),
      (success) => emit(ForgetpasswordSuccess(forgetPasswordModel: success)),
    );
  }
}
