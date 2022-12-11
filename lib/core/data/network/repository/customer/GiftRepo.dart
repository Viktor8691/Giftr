import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:giftr/core/data/ApiHelper.dart';
import 'package:giftr/core/data/network/module/customer/gift/GetReceivedGiftReq.dart';
import 'package:giftr/core/data/network/module/customer/gift/GetSentGiftReq.dart';
import 'package:giftr/core/data/network/module/customer/gift/SendGiftReq.dart';
import 'package:injectable/injectable.dart';

import '../../../Failure.dart';
import '../../ApiEndpoint.dart';

abstract class GiftRepo {
  Future<Either<Failure, Response>> sendGift(SendGiftReq request);
  Future<Either<Failure, Response>> getSentGifts(GetSentGiftReq request);
  Future<Either<Failure, Response>> getReceivedGifts(GetReceivedGiftReq request);
}

@Injectable(as: GiftRepo)
class GiftRepoImp extends GiftRepo{
  final ApiHelper _apiHelper;
  GiftRepoImp(this._apiHelper);

  @override
  Future<Either<Failure, Response>> sendGift(SendGiftReq request) async{
    final response = await _apiHelper.post(ApiEndpoint.sendGift, request.toJson());
    return response;
  }

  @override
  Future<Either<Failure, Response>> getSentGifts(GetSentGiftReq request) async  {
    final response = await _apiHelper.post(ApiEndpoint.getSentGifts, request.toJson());
    return response;
  }

  @override
  Future<Either<Failure, Response>> getReceivedGifts(GetReceivedGiftReq request) async {
    final response = await _apiHelper.post(ApiEndpoint.getReceivedGifts, request.toJson());
    return response;
  }
}