import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/features/auth/forget_password/data/repo/verify_code_repo.dart';

import '../../../data/model/verify_code_model.dart';

part 'verifycode_state.dart';

class VerifycodeCubit extends Cubit<VerifycodeState> {
  VerifycodeCubit(this._verifyCodeRepo) : super(VerifycodeInitial());

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
