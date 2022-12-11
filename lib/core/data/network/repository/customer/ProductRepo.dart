import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:giftr/core/data/ApiHelper.dart';
import 'package:giftr/core/data/network/module/customer/product/GetProductReq.dart';
import 'package:injectable/injectable.dart';

import '../../../Failure.dart';
import '../../ApiEndpoint.dart';

abstract class ProductRepo {
  Future<Either<Failure, Response>> getProduct(GetProductReq request);
}

@Injectable(as: ProductRepo)
class ProductRepoImp extends ProductRepo {

  final ApiHelper _apiHelper;
  ProductRepoImp(this._apiHelper);

  @override
  Future<Either<Failure, Response>> getProduct(GetProductReq request) async {
    final response = await _apiHelper.post(ApiEndpoint.getProducts, request.toJson());
    return response;
  }
}