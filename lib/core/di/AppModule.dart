import 'package:injectable/injectable.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class AppModule {
  @lazySingleton
  Client get httpClient => Client();

  @preResolve
  Future<SharedPreferences> get storage async => await SharedPreferences.getInstance();
}