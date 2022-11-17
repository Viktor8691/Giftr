// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../ui/main/MainScreen.dart' as _i4;
import '../../ui/user_management/login/LoginScreen.dart' as _i2;
import '../../ui/user_management/signup/SignupScreen.dart' as _i3;
import '../../ui/welcome/WelcomeScreen.dart' as _i1;

class MyRouter extends _i5.RootStackRouter {
  MyRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    WelcomeScreenRoute.name: (routeData) {
      return _i5.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i1.WelcomeScreen(),
      );
    },
    LoginScreenRoute.name: (routeData) {
      return _i5.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i2.LoginScreen(),
      );
    },
    SignupScreenRoute.name: (routeData) {
      return _i5.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i3.SignupScreen(),
      );
    },
    MainScreenRoute.name: (routeData) {
      return _i5.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i4.MainScreen(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          WelcomeScreenRoute.name,
          path: '/welcome-screen',
        ),
        _i5.RouteConfig(
          LoginScreenRoute.name,
          path: '/login-screen',
        ),
        _i5.RouteConfig(
          SignupScreenRoute.name,
          path: '/signup-screen',
        ),
        _i5.RouteConfig(
          MainScreenRoute.name,
          path: '/main-screen',
        ),
      ];
}

/// generated route for
/// [_i1.WelcomeScreen]
class WelcomeScreenRoute extends _i5.PageRouteInfo<void> {
  const WelcomeScreenRoute()
      : super(
          WelcomeScreenRoute.name,
          path: '/welcome-screen',
        );

  static const String name = 'WelcomeScreenRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreenRoute extends _i5.PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(
          LoginScreenRoute.name,
          path: '/login-screen',
        );

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i3.SignupScreen]
class SignupScreenRoute extends _i5.PageRouteInfo<void> {
  const SignupScreenRoute()
      : super(
          SignupScreenRoute.name,
          path: '/signup-screen',
        );

  static const String name = 'SignupScreenRoute';
}

/// generated route for
/// [_i4.MainScreen]
class MainScreenRoute extends _i5.PageRouteInfo<void> {
  const MainScreenRoute()
      : super(
          MainScreenRoute.name,
          path: '/main-screen',
        );

  static const String name = 'MainScreenRoute';
}
