import 'package:giftr/base/Interactor.dart';
import 'package:giftr/core/data/network/module/auth/UpdateTokenReq.dart';
import 'package:giftr/core/data/network/module/notification/GetCustomerNotiReq.dart';
import 'package:giftr/core/data/network/module/notification/GetCustomerNotiRes.dart';
import 'package:giftr/core/data/network/repository/notification/NotiRepo.dart';
import 'package:injectable/injectable.dart';

import '../../../core/data/network/module/auth/UpdateTokenRes.dart';
import '../../../core/data/network/repository/AuthRepo.dart';

@injectable
class CustomerMainInteractor extends Interactor {
  final NotiRepo _notiRepo;
  final AuthRepo _authRepo;
  CustomerMainInteractor(this._notiRepo, this._authRepo);

  Future<List<Notification>> getCustomerNotifications(GetCustomerNotiReq request) async {
    showLoading();
    final response = await _notiRepo.getCustomerNotifications(request);
    hideLoading();

    return response.fold((l) {
      return List.empty();
    }, (r) {
      return GetCustomerNotiRes.fromJson(r.data).data.notifications;
    });
  }

  Future<UpdateTokenRes?> updateToken(UpdateTokenReq request) async {
    showLoading();
    final response = await _authRepo.updateToken(request);
    hideLoading();

    return response.fold((l) {
      return null;
    }, (r) {
      return UpdateTokenRes.fromJson(r.data);
    });
  }
}