import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:quick_mart/core/error/api/exceptions/api_exceptions.dart';
import 'package:quick_mart/core/network/api_services.dart';
import 'package:quick_mart/features/auth/login/data/model/login_model.dart';

class AuthRepo {
  final ApiServices _apiServices;
  AuthRepo(this._apiServices);

  Future<Either<String, LoginModel>> login(
    String path,
    Map<String, dynamic> data,
  ) async {
    try {
      var response = await _apiServices.post(path, data: data);
      var result = LoginModel.fromJson(response);
      log(result.toString());
      return Right(result);
    } on ApiException catch (e) {
      return Left(e.errorModel.message!);
    }
  }
}
