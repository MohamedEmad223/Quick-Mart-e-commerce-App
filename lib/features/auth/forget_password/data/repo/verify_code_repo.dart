import 'package:dartz/dartz.dart';
import 'package:quick_mart/core/network/api_services.dart';
import 'package:quick_mart/features/auth/forget_password/data/model/verify_code_model.dart';

import '../../../../../core/error/api/exceptions/api_exceptions.dart';

class VerifyCodeRepo {
  final ApiServices _apiServices;

  VerifyCodeRepo(this._apiServices);

  Future<Either<String,VerfiyResetCodeModel>> verifyCode(String path, Map<String, dynamic> data) async {
    try {
      var response = await _apiServices.post(path, data: data);
      VerfiyResetCodeModel result = VerfiyResetCodeModel.fromJson(response);
      return Right(result);
    }on ApiException  catch  (error) {
      return Left(error.errorModel.message!);
    }
  }
}