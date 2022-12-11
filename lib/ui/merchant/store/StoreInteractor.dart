
import 'package:giftr/base/Interactor.dart';
import 'package:giftr/core/data/network/module/customer/product/GetProductRes.dart';
import 'package:giftr/core/data/network/module/merchant/GetMerchantProductReq.dart';
import 'package:giftr/core/data/network/module/merchant/GetMerchantProductRes.dart';
import 'package:giftr/core/data/network/repository/merchant/MerchantProductRepo.dart';
import 'package:injectable/injectable.dart';

@injectable
class StoreInteractor extends Interactor{
  final MerchantProductRepo _merchantProductRepo;
  StoreInteractor(this._merchantProductRepo);

  Future<List<Product>> getMerchantProducts(GetMerchantProductReq request) async{

    List<Product> products = [];
    showLoading();
    final response = await _merchantProductRepo.getMerchantProduct(request);
    hideLoading();

    return response.fold((l) {
      return List.empty();
    }, (r) {
      final response = GetMerchantProductRes.fromJson(r.data);
      return response.data.products;
    });
  }
}