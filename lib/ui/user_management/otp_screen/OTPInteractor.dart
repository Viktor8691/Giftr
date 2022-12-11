import 'dart:convert';

import 'package:giftr/base/Interactor.dart';
import 'package:giftr/core/data/network/module/auth/VerifyOTPReq.dart';
import 'package:giftr/core/data/network/repository/AuthRepo.dart';
import 'package:injectable/injectable.dart';

import '../../../core/data/network/module/auth/SignupReq.dart';
import '../../../core/data/network/module/auth/SignupRes.dart';
import '../../../core/data/network/module/auth/VerifyOTPRes.dart';

@injectable
class OTPInteractor extends Interactor {
  final AuthRepo _authRepo;
  OTPInteractor(this._authRepo);

  Future<VerifyOTPRes?> otpVerify(VerifyOTPReq request) async {
    showLoading();
    final response = await _authRepo.otpVerify(request);
    hideLoading();
    return response.fold((l) {
      return null;
    }, (r) {
      return VerifyOTPRes.fromJson(r.data);
    });
  }

  Future<SignupRes?> resendOtp(SignupReq request) async{
    showLoading();
    final response = await _authRepo.signup(request);
    hideLoading();

    return response.fold((l) {
      return null;
    }, (r) {
      return SignupRes.fromJson(r.data);
    });
  }
}