import 'dart:convert';

import 'package:giftr/base/Interactor.dart';
import 'package:giftr/core/data/network/module/customer/product/GetProductReq.dart';
import 'package:giftr/core/data/network/module/customer/product/GetProductRes.dart';
import 'package:injectable/injectable.dart';

import '../../../core/data/network/repository/customer/ProductRepo.dart';

@injectable
class HomeScreenInteractor extends Interactor{
  ProductRepo _homeRepo;
  HomeScreenInteractor(this._homeRepo);

  Future<List<Product>> getProduct(GetProductReq request) async {
    showLoading();
    final response = await _homeRepo.getProduct(request);
    hideLoading();
    return response.fold((l) {
      return [];
    }, (r) {
      return GetProductRes.fromJson(r.data).data.products;
    });
  }
}