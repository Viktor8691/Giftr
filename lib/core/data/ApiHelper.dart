import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:giftr/extension/StringExtension.dart';
import 'package:injectable/injectable.dart';


import '../../utils/Utils.dart';
import '../di/Injection.dart';
import 'Failure.dart';
import 'session/ISessionHelper.dart';

@injectable
class ApiHelper {
  final String baseUrl = "http://192.168.0.159:8080/giftr/api/";
  final Dio dio = getIt<Dio>();
  final ISessionHelper _sessionHelper = getIt<ISessionHelper>();
  final timeout = 30;

  Future<Either<Failure, Response>> multipartPost(String endPoint , Map<String, dynamic> body, String filePath) async =>
      await apiRequest(() async {
        body.addAll({'file' : await MultipartFile.fromFile(filePath)});
        final _res = await dio.post(
          baseUrl + endPoint,
          data: FormData.fromMap(body),
        );
        return _res;
      });

  Future<Either<Failure, Response>> post(String endPoint , Map<String, dynamic> body) async =>
      await apiRequest(() async {
        final _res = await dio.post(
          baseUrl + endPoint,
          data: FormData.fromMap(body),
        );
        return _res;
      });


  Future<Either<Failure, Response>> apiRequest(Future<dynamic> Function() function) async {
    try {
      final Response response = await function.call();
      doPrint(response);

      if (response.statusCode == 200){
        return Right(response);
      }
      showMyAlertDialog('API Error', response.data["message"] ?? "Something went wrong");
      return Left(ServerFailure(response.data["message"] ?? "Something went wrong"));
    } on DioError catch(e) {
      return Left(ServerFailure(_handleError(e)));
    }
  }

  String _handleError(DioError error) {
    String errorDescription = "";

    DioError dioError = error;
    switch (dioError.type) {
      case DioErrorType.connectTimeout:
        showMyAlertDialog('Connect Error', 'Connection timeout with API server');
        errorDescription = "Connection timeout with API server";
        break;
      case DioErrorType.sendTimeout:
        showMyAlertDialog('Connect Error', 'Send timeout in connection with API server');
        errorDescription = "Send timeout in connection with API server";
        break;
      case DioErrorType.receiveTimeout:
        showMyAlertDialog('Receive timeout', 'Receive timeout in connection with API server');
        errorDescription = "Receive timeout in connection with API server";
        break;
      case DioErrorType.response:
        final res = dioError.response!.data;
        APIError error  = APIError.fromJson(res);
        showMyAlertDialog('Error', error.message);
        errorDescription = "Received invalid status code: ${dioError.response!.statusCode}";
        break;
      case DioErrorType.cancel:
        showMyAlertDialog('API Request Error', 'Request to API server was cancelled');
        errorDescription = "Request to API server was cancelled";
        break;
      case DioErrorType.other:
        showMyAlertDialog('Connectionn Error', 'Connection to API server failed due to internet connection');
        errorDescription = "Connection to API server failed due to internet connection";
        break;
    }

    return errorDescription;
  }
}

class APIError {
  String message = '';
  APIError(this.message);

  factory APIError.fromJson(Map<String, dynamic> json) {
    return APIError(json['message']);
  }
}