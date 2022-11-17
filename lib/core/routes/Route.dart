import 'package:auto_route/annotations.dart';
import 'package:giftr/ui/user_management/login/LoginScreen.dart';
import 'package:giftr/ui/user_management/signup/SignupScreen.dart';
import 'package:giftr/ui/welcome/WelcomeScreen.dart';

import '../../ui/main/MainScreen.dart';

@CupertinoAutoRouter(
  routes: <AutoRoute> [
    CupertinoRoute(page: WelcomeScreen),
    CupertinoRoute(page: LoginScreen),
    CupertinoRoute(page: SignupScreen),
    CupertinoRoute(page: MainScreen)
  ]
)
class $MyRouter{}