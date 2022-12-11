// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetCustomerNotiRes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCustomerNotiRes _$GetCustomerNotiResFromJson(Map<String, dynamic> json) =>
    GetCustomerNotiRes(
      GetCustomerNotiResData.fromJson(json['data'] as Map<String, dynamic>),
      json['message'] as String,
    );

Map<String, dynamic> _$GetCustomerNotiResToJson(GetCustomerNotiRes instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };

GetCustomerNotiResData _$GetCustomerNotiResDataFromJson(
        Map<String, dynamic> json) =>
    GetCustomerNotiResData(
      (json['notifications'] as List<dynamic>)
          .map((e) => Notification.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetCustomerNotiResDataToJson(
        GetCustomerNotiResData instance) =>
    <String, dynamic>{
      'notifications': instance.notifications,
    };

Notification _$NotificationFromJson(Map<String, dynamic> json) => Notification(
      json['id'] as String,
      json['senderId'] as String,
      json['receiverPhone'] as String,
      json['merchantId'] as String,
      json['title'] as String,
      json['content'] as String,
      json['type'] as String,
      json['giftId'] as String,
      json['createdAt'] as String,
    );

Map<String, dynamic> _$NotificationToJson(Notification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'senderId': instance.senderId,
      'receiverPhone': instance.receiverPhone,
      'merchantId': instance.merchantId,
      'title': instance.title,
      'content': instance.content,
      'type': instance.type,
      'giftId': instance.giftId,
      'createdAt': instance.createdAt,
    };
