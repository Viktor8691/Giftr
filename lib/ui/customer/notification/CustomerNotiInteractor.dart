
import 'package:giftr/base/Interactor.dart';
import 'package:giftr/core/data/network/module/notification/DeleteNotiReq.dart';
import 'package:giftr/core/data/network/repository/notification/NotiRepo.dart';
import 'package:injectable/injectable.dart';

import '../../../core/data/network/module/notification/DeleteNotiRes.dart';

@injectable
class CustomerNotiInteractor extends Interactor{
  final NotiRepo _notiRepo;
  CustomerNotiInteractor(this._notiRepo);

  Future<DeleteNotiRes?> deleteNotification(DeleteNotiReq request) async{
    showLoading();
    final response = await _notiRepo.deleteNotification(request);
    hideLoading();
    return response.fold((l) {
      return null;
    }, (r) {
      return DeleteNotiRes.fromJson(r.data);
    });
  }
}