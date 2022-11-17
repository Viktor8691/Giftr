
import 'package:dartz/dartz.dart';
import 'package:giftr/extension/StringExtension.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

import '../../utils/Utils.dart';
import '../di/Injection.dart';
import 'Failure.dart';
import 'session/ISessionHelper.dart';

@injectable
class ApiHelper {
  final String baseUrl = "34.71.186.115";
  final http.Client _httpClient = getIt<http.Client>();
  final ISessionHelper _sessionHelper = getIt<ISessionHelper>();

  Future<Either<Failure, http.Response>> post(String endPoint , Map<String, dynamic> body) async {

    try {
      /*Map<String, String>? header;
      final authToken = await _sessionHelper.authToken;
      if (authToken != null){
        header = {'Authorization' : 'Bearer $authToken'};
      }*/

      final http.Response response = await _httpClient.post(
          Uri.http(baseUrl, endPoint),
          body: body,
      );

      response.body.doPrint();

      if (response.statusCode == 200 || response.statusCode == 201){
        return Right(response);
      }

      showMyAlertDialog('API Error', 'API Error, Please try later again');
      return Left(ServerFailure('API Error, Please try later again'));

    }catch (e) {
      return Left(ServerFailure('API Error, Please try later again'));
    }
  }
}