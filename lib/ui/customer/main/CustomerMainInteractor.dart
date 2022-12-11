import 'package:giftr/base/Interactor.dart';
import 'package:giftr/core/data/network/module/notification/GetCustomerNotiReq.dart';
import 'package:giftr/core/data/network/module/notification/GetCustomerNotiRes.dart';
import 'package:giftr/core/data/network/repository/notification/NotiRepo.dart';
import 'package:injectable/injectable.dart';

@injectable
class CustomerMainInteractor extends Interactor {
  final NotiRepo _notiRepo;
  CustomerMainInteractor(this._notiRepo);

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
}