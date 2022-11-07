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
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../ui/user_management/login/LoginScreen.dart' as _i2;
import '../../ui/user_management/signup/SignupScreen.dart' as _i3;
import '../../ui/welcome/WelcomeScreen.dart' as _i1;

class MyRouter extends _i4.RootStackRouter {
  MyRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    WelcomeScreenRoute.name: (routeData) {
      return _i4.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i1.WelcomeScreen(),
      );
    },
    LoginScreenRoute.name: (routeData) {
      return _i4.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i2.LoginScreen(),
      );
    },
    SignupScreenRoute.name: (routeData) {
      return _i4.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i3.SignupScreen(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          WelcomeScreenRoute.name,
          path: '/welcome-screen',
        ),
        _i4.RouteConfig(
          LoginScreenRoute.name,
          path: '/login-screen',
        ),
        _i4.RouteConfig(
          SignupScreenRoute.name,
          path: '/signup-screen',
        ),
      ];
}

/// generated route for
/// [_i1.WelcomeScreen]
class WelcomeScreenRoute extends _i4.PageRouteInfo<void> {
  const WelcomeScreenRoute()
      : super(
          WelcomeScreenRoute.name,
          path: '/welcome-screen',
        );

  static const String name = 'WelcomeScreenRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreenRoute extends _i4.PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(
          LoginScreenRoute.name,
          path: '/login-screen',
        );

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i3.SignupScreen]
class SignupScreenRoute extends _i4.PageRouteInfo<void> {
  const SignupScreenRoute()
      : super(
          SignupScreenRoute.name,
          path: '/signup-screen',
        );

  static const String name = 'SignupScreenRoute';
}
