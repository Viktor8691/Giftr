import '../network/module/auth/LoginRes.dart';

abstract class ISessionHelper {
  void clearSession();
  bool isUserLoggedIn();
  Future<User?>? user;
  void saveUser(User user);
}