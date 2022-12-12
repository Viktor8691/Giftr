import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:giftr/core/data/ApiHelper.dart';
import 'package:giftr/core/data/network/module/profile/UploadAvatarReq.dart';
import 'package:injectable/injectable.dart';

import '../../Failure.dart';
import '../ApiEndpoint.dart';

abstract class ProfileRepo {
  Future<Either<Failure, Response>> uploadAvatar(UploadAvatarReq request);
}

@Injectable(as: ProfileRepo)
class ProfileRepoImp extends ProfileRepo {

  final ApiHelper _apiHelper;
  ProfileRepoImp(this._apiHelper);

  @override
  Future<Either<Failure, Response>> uploadAvatar(UploadAvatarReq request) async {
    final response = await _apiHelper.multipartPost(ApiEndpoint.uploadProfilePicture, request.toJson(), request.filePath);
    return response;
  }
}