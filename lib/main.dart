import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:giftr/constants/AppConstants.dart';
import 'package:giftr/extension/Extension.dart';
import 'constants/AppColors.dart';
import 'core/di/Injection.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'core/firebase/FirebaseService.dart';
import 'core/routes/Route.gr.dart';

final appRouter = MyRouter();
@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print("Handling a background message: ${message.messageId}");
}

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 2000)
      ..indicatorType = EasyLoadingIndicatorType.ring
      ..loadingStyle = EasyLoadingStyle.light
      ..indicatorSize = 45.0
      ..radius = 10.0
      ..maskType = EasyLoadingMaskType.custom
      ..maskColor = AppColors.colorPrimary.withOpacity(.2)
      ..indicatorColor = AppColors.colorPrimary
      ..progressColor = AppColors.colorPrimary
      ..textColor = AppColors.colorPrimary
      ..userInteractions = false;
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: const MediaQueryData(size: Size(400, 400)),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth != 0){
            final size = context.getScreenSize;
            ScreenUtil.init(context, designSize: size);
          }
          return MaterialApp.router(
              title: "MailScanner",
              debugShowCheckedModeBanner: false,
              routeInformationParser: appRouter.defaultRouteParser(),
              routerDelegate: appRouter.delegate(
                  initialRoutes: [
                     WelcomeScreenRoute()
                  ]
              ), builder: EasyLoading.init()
          );
        },
      ),
    );
  }
}

