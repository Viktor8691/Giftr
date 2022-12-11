import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:giftr/core/data/ApiHelper.dart';
import 'package:giftr/core/data/network/module/notification/GetCustomerNotiReq.dart';
import 'package:injectable/injectable.dart';

import '../../../Failure.dart';
import '../../ApiEndpoint.dart';

abstract class NotiRepo {
  Future<Either<Failure, Response>> getCustomerNotifications(GetCustomerNotiReq request);
}

@Injectable(as: NotiRepo)
class NotiRepoImp extends NotiRepo {

  final ApiHelper _apiHelper;
  NotiRepoImp(this._apiHelper);

  @override
  Future<Either<Failure, Response>> getCustomerNotifications(GetCustomerNotiReq request) async {
    final response = await _apiHelper.post(ApiEndpoint.getNotifications, request.toJson());
    return response;
  }
}