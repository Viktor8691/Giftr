import 'dart:convert';

import 'package:giftr/base/Interactor.dart';
import 'package:giftr/core/data/network/module/auth/LoginReq.dart';
import 'package:giftr/core/data/network/repository/AuthRepo.dart';
import 'package:injectable/injectable.dart';

import '../../../core/data/network/module/auth/LoginRes.dart';

@injectable
class LoginInteractor extends Interactor{

  final AuthRepo _authRepo;
  LoginInteractor(this._authRepo);

  Future<User?> login(LoginReq request) async {
    showLoading();
    final response = await _authRepo.login(request);
    hideLoading();

    return response.fold((l) {
      return null;
    }, (r) {
      return LoginRes.fromJson(r.data).data.user_details;
    });
  }
}