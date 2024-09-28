import 'package:dartz/dartz.dart';
import 'package:quick_mart/core/error/api/exceptions/api_exceptions.dart';
import 'package:quick_mart/core/network/api_services.dart';
import 'package:quick_mart/features/auth/forget_password/data/model/forget_password_model.dart';

class ForgetPasswordRepo {
  final ApiServices _apiServices;

  ForgetPasswordRepo(this._apiServices);

  Future<Either<String, ForgetPasswordModel>> forgetPassword(
      String path, Map<String, dynamic> data) async {
    try {
      var response = await _apiServices.post(path, data: data);
      ForgetPasswordModel result = ForgetPasswordModel.fromJson(response);
      return Right(result);
    } on ApiException catch (error) {
      return Left(error.errorModel.message!);
    }
  }
}
