import 'package:fbroadcast/fbroadcast.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:giftr/base/BaseViewModel.dart';
import 'package:giftr/constants/AppConstants.dart';
import 'package:giftr/core/data/network/module/auth/UpdateTokenReq.dart';
import 'package:giftr/core/data/network/module/notification/GetCustomerNotiReq.dart';
import 'package:giftr/core/di/Injection.dart';
import 'package:giftr/extension/Extension.dart';
import 'package:giftr/ui/customer/main/CustomerMainInteractor.dart';
import 'package:injectable/injectable.dart';

import '../../../core/data/network/module/notification/GetCustomerNotiRes.dart';
import '../../../core/firebase/FirebaseService.dart';

@injectable
class CustomerMainViewModel extends BaseViewModel {

  final CustomerMainInteractor _interactor;
  CustomerMainViewModel(this._interactor);

  List<Notification> notifications = [];
  final _firebaseService = FirebaseService();

  @override
  void init() {
    getCustomerNotifications();
    updateToken();

    FBroadcast.instance().register(SHOW_NOTI_BADGE, (value, callback) {
      getCustomerNotifications();
    });
  }


  void getCustomerNotifications() async{
    notifications.clear();
    final request = GetCustomerNotiReq(appUser!.phone_no);
    final response = await _interactor.getCustomerNotifications(request);
    notifications.addAll(response);
    notifyListeners();
  }

  void updateToken() async {
    final fcmToken = await _firebaseService.requestPermissionGetToken();
    if (fcmToken == null) return;

    final request = UpdateTokenReq(appUser!.id, fcmToken);
    await _interactor.updateToken(request);
  }
}