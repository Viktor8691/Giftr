// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetSentGiftRes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetSentGiftRes _$GetSentGiftResFromJson(Map<String, dynamic> json) =>
    GetSentGiftRes(
      json['message'] as String,
      GetSentGiftResData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetSentGiftResToJson(GetSentGiftRes instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

GetSentGiftResData _$GetSentGiftResDataFromJson(Map<String, dynamic> json) =>
    GetSentGiftResData(
      (json['gifts'] as List<dynamic>)
          .map((e) => Gift.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetSentGiftResDataToJson(GetSentGiftResData instance) =>
    <String, dynamic>{
      'gifts': instance.gifts,
    };

Gift _$GiftFromJson(Map<String, dynamic> json) => Gift(
      json['id'] as String,
      json['senderId'] as String,
      json['friendPhone'] as String,
      json['friendName'] as String,
      json['merchantId'] as String,
      Product.fromJson(json['product'] as Map<String, dynamic>),
      json['createdAt'] as String,
      json['sender'] == null
          ? null
          : User.fromJson(json['sender'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GiftToJson(Gift instance) => <String, dynamic>{
      'id': instance.id,
      'senderId': instance.senderId,
      'friendPhone': instance.friendPhone,
      'friendName': instance.friendName,
      'merchantId': instance.merchantId,
      'createdAt': instance.createdAt,
      'product': instance.product,
      'sender': instance.sender,
    };
