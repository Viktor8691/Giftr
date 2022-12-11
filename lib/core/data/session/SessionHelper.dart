import 'dart:convert';

import 'package:giftr/core/data/network/module/auth/LoginRes.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../constants/AppConstants.dart';
import 'ISessionHelper.dart';

@Injectable(as: ISessionHelper)
class SessionHelper extends ISessionHelper {

  final SharedPreferences _storage;
  SessionHelper(this._storage) : super();
  
  @override
  Future<User?> get user async {
    final strUser = _storage.getString(PREF_SESSION);
    if (strUser != null){
      final jsonUser = jsonDecode(strUser) as Map<String, dynamic>;
      return User.fromJson(jsonUser);
    }
  }
  
  @override
  void clearSession() {
    _storage.clear();
  }

  @override
  bool isUserLoggedIn() => _storage.containsKey(PREF_SESSION);

  @override
  void saveUser(User user) {
    _storage.setString(PREF_SESSION, jsonEncode(user.toJson()));
  }
}