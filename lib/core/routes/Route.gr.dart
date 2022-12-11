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
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

import '../../ui/customer/home/contact_list/ContactListScreen.dart' as _i7;
import '../../ui/customer/home/product_detail/ProductDetailScreen.dart' as _i6;
import '../../ui/customer/main/CustomerMainScreen.dart' as _i4;
import '../../ui/customer/notification/CustomerNotiScreen.dart' as _i9;
import '../../ui/merchant/main/MerchantMainScreen.dart' as _i8;
import '../../ui/user_management/login/LoginScreen.dart' as _i2;
import '../../ui/user_management/otp_screen/OTPScreen.dart' as _i5;
import '../../ui/user_management/signup/SignupScreen.dart' as _i3;
import '../../ui/welcome/WelcomeScreen.dart' as _i1;
import '../data/network/module/auth/SignupRes.dart' as _i12;
import '../data/network/module/customer/product/GetProductRes.dart' as _i13;
import '../data/network/module/notification/GetCustomerNotiRes.dart' as _i14;

class MyRouter extends _i10.RootStackRouter {
  MyRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    WelcomeScreenRoute.name: (routeData) {
      return _i10.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i1.WelcomeScreen(),
      );
    },
    LoginScreenRoute.name: (routeData) {
      return _i10.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i2.LoginScreen(),
      );
    },
    SignupScreenRoute.name: (routeData) {
      final args = routeData.argsAs<SignupScreenRouteArgs>();
      return _i10.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i3.SignupScreen(args.userType),
      );
    },
    CustomerMainScreenRoute.name: (routeData) {
      return _i10.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i4.CustomerMainScreen(),
      );
    },
    OTPScreenRoute.name: (routeData) {
      final args = routeData.argsAs<OTPScreenRouteArgs>();
      return _i10.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i5.OTPScreen(args.signupRes),
      );
    },
    ProductDetailScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailScreenRouteArgs>();
      return _i10.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i6.ProductDetailScreen(args.product),
      );
    },
    ContactListScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ContactListScreenRouteArgs>();
      return _i10.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i7.ContactListScreen(args.product),
      );
    },
    MerchantMainScreenRoute.name: (routeData) {
      return _i10.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i8.MerchantMainScreen(),
      );
    },
    CustomerNotiScreenRoute.name: (routeData) {
      final args = routeData.argsAs<CustomerNotiScreenRouteArgs>();
      return _i10.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i9.CustomerNotiScreen(args.data),
      );
    },
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(
          WelcomeScreenRoute.name,
          path: '/welcome-screen',
        ),
        _i10.RouteConfig(
          LoginScreenRoute.name,
          path: '/login-screen',
        ),
        _i10.RouteConfig(
          SignupScreenRoute.name,
          path: '/signup-screen',
        ),
        _i10.RouteConfig(
          CustomerMainScreenRoute.name,
          path: '/customer-main-screen',
        ),
        _i10.RouteConfig(
          OTPScreenRoute.name,
          path: '/o-tp-screen',
        ),
        _i10.RouteConfig(
          ProductDetailScreenRoute.name,
          path: '/product-detail-screen',
        ),
        _i10.RouteConfig(
          ContactListScreenRoute.name,
          path: '/contact-list-screen',
        ),
        _i10.RouteConfig(
          MerchantMainScreenRoute.name,
          path: '/merchant-main-screen',
        ),
        _i10.RouteConfig(
          CustomerNotiScreenRoute.name,
          path: '/customer-noti-screen',
        ),
      ];
}

/// generated route for
/// [_i1.WelcomeScreen]
class WelcomeScreenRoute extends _i10.PageRouteInfo<void> {
  const WelcomeScreenRoute()
      : super(
          WelcomeScreenRoute.name,
          path: '/welcome-screen',
        );

  static const String name = 'WelcomeScreenRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreenRoute extends _i10.PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(
          LoginScreenRoute.name,
          path: '/login-screen',
        );

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i3.SignupScreen]
class SignupScreenRoute extends _i10.PageRouteInfo<SignupScreenRouteArgs> {
  SignupScreenRoute({required String userType})
      : super(
          SignupScreenRoute.name,
          path: '/signup-screen',
          args: SignupScreenRouteArgs(userType: userType),
        );

  static const String name = 'SignupScreenRoute';
}

class SignupScreenRouteArgs {
  const SignupScreenRouteArgs({required this.userType});

  final String userType;

  @override
  String toString() {
    return 'SignupScreenRouteArgs{userType: $userType}';
  }
}

/// generated route for
/// [_i4.CustomerMainScreen]
class CustomerMainScreenRoute extends _i10.PageRouteInfo<void> {
  const CustomerMainScreenRoute()
      : super(
          CustomerMainScreenRoute.name,
          path: '/customer-main-screen',
        );

  static const String name = 'CustomerMainScreenRoute';
}

/// generated route for
/// [_i5.OTPScreen]
class OTPScreenRoute extends _i10.PageRouteInfo<OTPScreenRouteArgs> {
  OTPScreenRoute({required _i12.SignupRes signupRes})
      : super(
          OTPScreenRoute.name,
          path: '/o-tp-screen',
          args: OTPScreenRouteArgs(signupRes: signupRes),
        );

  static const String name = 'OTPScreenRoute';
}

class OTPScreenRouteArgs {
  const OTPScreenRouteArgs({required this.signupRes});

  final _i12.SignupRes signupRes;

  @override
  String toString() {
    return 'OTPScreenRouteArgs{signupRes: $signupRes}';
  }
}

/// generated route for
/// [_i6.ProductDetailScreen]
class ProductDetailScreenRoute
    extends _i10.PageRouteInfo<ProductDetailScreenRouteArgs> {
  ProductDetailScreenRoute({required dynamic product})
      : super(
          ProductDetailScreenRoute.name,
          path: '/product-detail-screen',
          args: ProductDetailScreenRouteArgs(product: product),
        );

  static const String name = 'ProductDetailScreenRoute';
}

class ProductDetailScreenRouteArgs {
  const ProductDetailScreenRouteArgs({required this.product});

  final dynamic product;

  @override
  String toString() {
    return 'ProductDetailScreenRouteArgs{product: $product}';
  }
}

/// generated route for
/// [_i7.ContactListScreen]
class ContactListScreenRoute
    extends _i10.PageRouteInfo<ContactListScreenRouteArgs> {
  ContactListScreenRoute({required _i13.Product product})
      : super(
          ContactListScreenRoute.name,
          path: '/contact-list-screen',
          args: ContactListScreenRouteArgs(product: product),
        );

  static const String name = 'ContactListScreenRoute';
}

class ContactListScreenRouteArgs {
  const ContactListScreenRouteArgs({required this.product});

  final _i13.Product product;

  @override
  String toString() {
    return 'ContactListScreenRouteArgs{product: $product}';
  }
}

/// generated route for
/// [_i8.MerchantMainScreen]
class MerchantMainScreenRoute extends _i10.PageRouteInfo<void> {
  const MerchantMainScreenRoute()
      : super(
          MerchantMainScreenRoute.name,
          path: '/merchant-main-screen',
        );

  static const String name = 'MerchantMainScreenRoute';
}

/// generated route for
/// [_i9.CustomerNotiScreen]
class CustomerNotiScreenRoute
    extends _i10.PageRouteInfo<CustomerNotiScreenRouteArgs> {
  CustomerNotiScreenRoute({required List<_i14.Notification> data})
      : super(
          CustomerNotiScreenRoute.name,
          path: '/customer-noti-screen',
          args: CustomerNotiScreenRouteArgs(data: data),
        );

  static const String name = 'CustomerNotiScreenRoute';
}

class CustomerNotiScreenRouteArgs {
  const CustomerNotiScreenRouteArgs({required this.data});

  final List<_i14.Notification> data;

  @override
  String toString() {
    return 'CustomerNotiScreenRouteArgs{data: $data}';
  }
}
