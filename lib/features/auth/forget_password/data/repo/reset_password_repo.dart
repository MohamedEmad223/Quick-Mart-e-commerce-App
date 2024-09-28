import 'package:dartz/dartz.dart';
import 'package:quick_mart/core/error/api/exceptions/api_exceptions.dart';
import 'package:quick_mart/core/network/api_services.dart';
import 'package:quick_mart/features/auth/forget_password/data/model/reset_password_model.dart';

class ResetPasswordRepo {
  final ApiServices _apiServices;
  ResetPasswordRepo(this._apiServices);

  Future<Either<String, ResetPasswordModel>> resetPassword(
      String path, Map<String, dynamic> data) async {
    try {
      final response = await _apiServices.put(
        path,
        data: data,
      );
      return Right(ResetPasswordModel.fromJson(response));
    }on ApiException catch (e) {
      return Left(e.errorModel.message!);
    }
  }
}
