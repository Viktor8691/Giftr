// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import '../../ui/user_management/signup/SignupViewModel.dart' as _i6;
import '../../ui/welcome/WelcomeViewModel.dart' as _i7;
import '../data/ApiHelper.dart' as _i3;
import '../data/session/ISessionHelper.dart' as _i8;
import '../data/session/SessionHelper.dart' as _i9;
import 'AppModule.dart' as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  gh.factory<_i3.ApiHelper>(() => _i3.ApiHelper());
  gh.lazySingleton<_i4.Client>(() => appModule.httpClient);
  await gh.factoryAsync<_i5.SharedPreferences>(
    () => appModule.storage,
    preResolve: true,
  );
  gh.factory<_i6.SignupViewModel>(() => _i6.SignupViewModel());
  gh.factory<_i7.WelcomeViewModel>(() => _i7.WelcomeViewModel());
  gh.factory<_i8.ISessionHelper>(
      () => _i9.SessionHelper(get<_i5.SharedPreferences>()));
  return get;
}

class _$AppModule extends _i10.AppModule {}
