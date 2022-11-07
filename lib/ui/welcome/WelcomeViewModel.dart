import 'package:giftr/base/BaseViewModel.dart';
import 'package:giftr/core/data/session/SessionHelper.dart';
import 'package:giftr/core/di/Injection.dart';
import 'package:injectable/injectable.dart';

import '../../core/data/session/ISessionHelper.dart';

@injectable
class WelcomeViewModel extends BaseViewModel {

  final ISessionHelper _sessionHelper = getIt<ISessionHelper>();
  bool isUserLoggedIn = false;

  @override
  void init() {
    checkSession();
  }

  void checkSession() async {
    isUserLoggedIn = await _sessionHelper.isUserLoggedIn();
  }
}