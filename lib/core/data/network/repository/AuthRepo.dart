import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:giftr/core/data/ApiHelper.dart';
import 'package:giftr/core/data/Failure.dart';
import 'package:giftr/core/data/network/ApiEndpoint.dart';
import 'package:giftr/core/data/network/module/auth/LoginReq.dart';
import 'package:giftr/core/data/network/module/auth/UpdateTokenReq.dart';
import 'package:giftr/core/data/network/module/auth/VerifyOTPReq.dart';
import 'package:injectable/injectable.dart';

import '../module/auth/SignupReq.dart';

abstract class AuthRepo {
  Future<Either<Failure, Response>> signup(SignupReq request);
  Future<Either<Failure, Response>> login(LoginReq request);
  Future<Either<Failure, Response>> otpVerify(VerifyOTPReq request);
  Future<Either<Failure, Response>> updateToken(UpdateTokenReq request);
}

@Injectable(as: AuthRepo)
class AuthRepoImp extends AuthRepo {
  
  final ApiHelper _apiHelper;
  AuthRepoImp(this._apiHelper);

  @override
  Future<Either<Failure, Response>> signup(SignupReq request) async {
    final response = await _apiHelper.post(ApiEndpoint.register, request.toJson());
    return response;
  }

  @override
  Future<Either<Failure, Response>> login(LoginReq request) async {
    final response = await _apiHelper.post(ApiEndpoint.login, request.toJson());
    return response;
  }

  @override
  Future<Either<Failure, Response>> otpVerify(VerifyOTPReq request) async{
    final response = await _apiHelper.post(ApiEndpoint.verifyOtp, request.toJson());
    return response;
  }

  @override
  Future<Either<Failure, Response>> updateToken(UpdateTokenReq request) async {
    final response = await _apiHelper.post(ApiEndpoint.updateToken, request.toJson());
    return response;
  }
  
}