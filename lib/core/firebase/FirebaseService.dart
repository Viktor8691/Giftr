import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:giftr/base/Interactor.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:giftr/constants/AppConstants.dart';
import 'package:giftr/core/data/network/module/auth/UpdateTokenReq.dart';
import 'package:giftr/core/data/network/repository/AuthRepo.dart';
import 'package:giftr/extension/StringExtension.dart';
import 'package:giftr/utils/Utils.dart';
import 'package:injectable/injectable.dart';

class FirebaseService extends Interactor{

  bool isFlutterLocalNotificationsInitialized = false;
  late AndroidNotificationChannel channel;
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  FirebaseService(){
    init();
  }

  void init(){
    print('aaaa ===> setup notification');
    setupFlutterNotifications();
  }

  Future<void> setupFlutterNotifications() async {
    FirebaseMessaging.onMessage.listen((RemoteMessage event) {
      print("aaaa ===> message recieved");
      print(event.notification!.body);
    });
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      print('Message clicked!');
    });
  }

  void _showFlutterNotification(RemoteMessage message) {
    RemoteNotification? notification = message.notification;
    AndroidNotification? android = message.notification?.android;
    if (notification != null && android != null && !kIsWeb) {
      flutterLocalNotificationsPlugin.show(
        notification.hashCode,
        notification.title,
        notification.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            channel.id,
            channel.name,
            channelDescription: channel.description,
            // TODO add a proper drawable resource to android, for now using
            //      one that already exists in example app.
            icon: 'launch_background',
          ),
        ),
      );
    }
  }

  Future<String?> requestPermissionGetToken () async {
    final settings = await FirebaseMessaging.instance.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      final fcmToken = await FirebaseMessaging.instance.getToken();
      return fcmToken;
    }else {
      showMyAlertDialog('Permission Denied', 'You did not allow the permission to receive notification');
      return null;
    }
  }
}