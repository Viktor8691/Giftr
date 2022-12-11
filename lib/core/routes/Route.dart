import 'package:auto_route/annotations.dart';
import 'package:giftr/ui/user_management/login/LoginScreen.dart';
import 'package:giftr/ui/user_management/otp_screen/OTPScreen.dart';
import 'package:giftr/ui/user_management/signup/SignupScreen.dart';
import 'package:giftr/ui/welcome/WelcomeScreen.dart';

import '../../ui/customer/home/contact_list/ContactListScreen.dart';
import '../../ui/customer/home/product_detail/ProductDetailScreen.dart';
import '../../ui/customer/main/CustomerMainScreen.dart';
import '../../ui/customer/notification/CustomerNotiScreen.dart';
import '../../ui/merchant/main/MerchantMainScreen.dart';


@CupertinoAutoRouter(
  routes: <AutoRoute> [
    CupertinoRoute(page: WelcomeScreen),
    CupertinoRoute(page: LoginScreen),
    CupertinoRoute(page: SignupScreen),
    CupertinoRoute(page: CustomerMainScreen),
    CupertinoRoute(page: OTPScreen),
    CupertinoRoute(page: ProductDetailScreen),
    CupertinoRoute(page: ContactListScreen),
    CupertinoRoute(page: MerchantMainScreen),
    CupertinoRoute(page: CustomerNotiScreen),
  ]
)
class $MyRouter{}