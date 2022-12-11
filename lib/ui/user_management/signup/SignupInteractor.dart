import 'dart:convert';

import 'package:giftr/base/Interactor.dart';
import 'package:giftr/core/data/network/repository/AuthRepo.dart';
import 'package:injectable/injectable.dart';

import '../../../core/data/network/module/auth/SignupReq.dart';
import '../../../core/data/network/module/auth/SignupRes.dart';


@injectable
class SignupInteractor extends Interactor{
  final AuthRepo _authRepo;
  SignupInteractor(this._authRepo);

  Future<SignupRes?> signup(SignupReq request) async{
    showLoading();
    final response = await _authRepo.signup(request);

    return response.fold((l) {
      hideLoading();
      return null;
    }, (r) {
      hideLoading();
      return SignupRes.fromJson(r.data);
    });
  }
}