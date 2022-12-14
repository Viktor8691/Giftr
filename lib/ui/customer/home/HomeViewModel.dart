import 'package:giftr/base/BaseViewModel.dart';
import 'package:giftr/core/data/network/module/customer/product/GetProductReq.dart';
import 'package:injectable/injectable.dart';

import '../../../core/data/network/module/customer/product/GetProductRes.dart';
import '../../../core/data/network/module/notification/GetCustomerNotiRes.dart';
import 'HomeInteractor.dart';


@injectable
class HomeViewModel extends BaseViewModel {

  HomeScreenInteractor _interactor;
  HomeViewModel(this._interactor);

  List<Product> products = [];
  int page = 0, limit = 20;
  List<Notification> notifications = [];

  @override
  void init() {
    getProduct();
  }

  void getProduct() async{
    products.clear();
    final request = GetProductReq(page.toString(), limit.toString());
    final response = await _interactor.getProduct(request);
    products.addAll(response);
    notifyListeners();
  }

  void showNotificationBadge(List<Notification> data){
    notifications.clear();
    notifications.addAll(data);
    notifyListeners();
  }

  void reloadNotifications(List<Notification> data){
    notifications.clear();
    notifications.addAll(data);
    notifyListeners();
  }
}