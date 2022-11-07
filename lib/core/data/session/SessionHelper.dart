import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../constants/AppConstants.dart';
import 'ISessionHelper.dart';

@Injectable(as: ISessionHelper)
class SessionHelper extends ISessionHelper {

  final SharedPreferences storage;
  SessionHelper(this.storage) : super();

  @override
  void clearSession() {}

  @override
  bool isUserLoggedIn() => storage.containsKey(PREF_LOGIN_REQUEST);
}