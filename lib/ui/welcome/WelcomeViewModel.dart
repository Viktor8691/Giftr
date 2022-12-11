import 'package:giftr/base/BaseViewModel.dart';
import 'package:giftr/constants/AppConstants.dart';
import 'package:giftr/core/data/session/SessionHelper.dart';
import 'package:giftr/core/di/Injection.dart';
import 'package:injectable/injectable.dart';

import '../../core/data/session/ISessionHelper.dart';

@injectable
class WelcomeViewModel extends BaseViewModel {

  final ISessionHelper _sessionHelper;
  WelcomeViewModel(this._sessionHelper);

  bool isUserLoggedIn = false;

  @override
  void init() {
    checkSession();
  }

  void checkSession() async {
    isUserLoggedIn = _sessionHelper.isUserLoggedIn();
    if (isUserLoggedIn) {
      appUser = await _sessionHelper.user;
    }
  }
}