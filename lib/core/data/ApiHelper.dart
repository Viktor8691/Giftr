
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

import '../di/Injection.dart';
import 'session/ISessionHelper.dart';

@injectable
class ApiHelper {
  final String baseUrl = "34.71.186.115";
  final http.Client _httpClient = getIt<http.Client>();
  final ISessionHelper _sessionHelper = getIt<ISessionHelper>();
}