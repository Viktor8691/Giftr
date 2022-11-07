
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

import '../di/Injection.dart';

@injectable
class ApiHelper {
  final String baseUrl = '';
  final Client _httpClient = getIt<Client>();
}