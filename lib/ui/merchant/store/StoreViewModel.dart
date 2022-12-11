import 'package:giftr/base/BaseViewModel.dart';
import 'package:giftr/constants/AppConstants.dart';
import 'package:giftr/core/data/network/module/merchant/GetMerchantProductReq.dart';
import 'package:giftr/extension/Extension.dart';
import 'package:giftr/ui/merchant/store/StoreInteractor.dart';
import 'package:injectable/injectable.dart';

import '../../../core/data/network/module/customer/product/GetProductRes.dart';

@injectable
class StoreViewModel extends BaseViewModel {

  final StoreInteractor _interactor;
  StoreViewModel(this._interactor);

  List<Product> products= [];
  int page = 0, limit = 20;
  @override
  void init() {
    getProducts();
  }

  void getProducts() async {
    final request = GetMerchantProductReq(appUser!.id, page.toString(), limit.toString());
    final response = await _interactor.getMerchantProducts(request);
    products.addAll(response);
    page++;
    notifyListeners();
  }
}