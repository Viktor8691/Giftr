import 'dart:io';

import 'package:giftr/core/data/network/module/auth/LoginRes.dart';

final String PREF_LOGIN_REQUEST = "loginRequest";

final deviceType = Platform.isAndroid ? DeviceType.Andorid : DeviceType.iOS;
final deviceToken = 'testToken';
final deviceModel = 'testDeviceModel';
final deviceVersion = 'testDeviceVersion';
final String PREF_SESSION = 'Session';
final String DIVIDE_CHARACTER = '::==::';
final String CUSTOMER = '1';
final String MERCHANT = '2';

User? appUser;


enum Gender {
  Male, Female
}

enum DeviceType {
  Andorid, iOS
}