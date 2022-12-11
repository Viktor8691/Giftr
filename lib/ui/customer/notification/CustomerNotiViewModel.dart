import 'package:giftr/base/BaseViewModel.dart';
import 'package:giftr/constants/AppConstants.dart';
import 'package:giftr/core/data/network/module/notification/GetCustomerNotiReq.dart';
import 'package:giftr/ui/customer/notification/CustomerNotiInteractor.dart';
import 'package:injectable/injectable.dart';

import '../../../core/data/network/module/notification/GetCustomerNotiRes.dart';

@injectable
class CustomerNotiViewModel extends BaseViewModel{

  CustomerNotiViewModel();

  List<Notification> notifications = [];

  @override
  void init() {}

  void getNotifications() async{

  }
}