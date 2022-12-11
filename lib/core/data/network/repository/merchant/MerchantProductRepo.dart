import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:giftr/core/data/ApiHelper.dart';
import 'package:giftr/core/data/network/ApiEndpoint.dart';
import 'package:giftr/core/data/network/module/merchant/GetMerchantProductReq.dart';
import 'package:injectable/injectable.dart';

import '../../../Failure.dart';

abstract class MerchantProductRepo {
  Future<Either<Failure, Response>> getMerchantProduct(GetMerchantProductReq request);
}

@Injectable(as: MerchantProductRepo)
class MerchantProductRepoImp extends MerchantProductRepo{
  final ApiHelper _apiHelper;
  MerchantProductRepoImp(this._apiHelper);

  @override
  Future<Either<Failure, Response>> getMerchantProduct(GetMerchantProductReq request) async {
    final response = await _apiHelper.post(ApiEndpoint.getMerchantProduct, request.toJson());
    return response;
  }
}