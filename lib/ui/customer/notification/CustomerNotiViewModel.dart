import 'package:giftr/base/BaseViewModel.dart';
import 'package:giftr/constants/AppConstants.dart';
import 'package:giftr/core/data/network/module/notification/DeleteNotiReq.dart';
import 'package:giftr/extension/Extension.dart';
import 'package:injectable/injectable.dart';

import '../../../core/data/network/module/notification/GetCustomerNotiRes.dart';
import 'CustomerNotiInteractor.dart';

@injectable
class CustomerNotiViewModel extends BaseViewModel{

  final CustomerNotiInteractor _interactor;
  CustomerNotiViewModel(this._interactor);

  List<Notification> notifications = [];

  @override
  void init() {}

  void getNotifications() async{}

  void deleteNotification(int position) async {
    final request = DeleteNotiReq(appUser!.phone_no);
    final response = await  _interactor.deleteNotification(request);
    response?.let((it) {
      notifications.removeAt(position);
      notifyListeners();
    });
  }
}