import 'package:giftr/base/BaseViewModel.dart';
import 'package:giftr/constants/AppConstants.dart';
import 'package:giftr/core/data/network/module/notification/GetCustomerNotiReq.dart';
import 'package:giftr/ui/customer/main/CustomerMainInteractor.dart';
import 'package:injectable/injectable.dart';

import '../../../core/data/network/module/notification/GetCustomerNotiRes.dart';

@injectable
class CustomerMainViewModel extends BaseViewModel {

  final CustomerMainInteractor _interactor;
  CustomerMainViewModel(this._interactor);

  List<Notification> notifications = [];

  @override
  void init() {
    getCustomerNotifications();
  }

  void getCustomerNotifications() async{
    final request = GetCustomerNotiReq(appUser!.phone_no);
    final response = await _interactor.getCustomerNotifications(request);
    notifications.addAll(response);
    notifyListeners();
  }
}