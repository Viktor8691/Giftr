// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SendGiftReq.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendGiftReq _$SendGiftReqFromJson(Map<String, dynamic> json) => SendGiftReq(
      json['senderId'] as String,
      json['friendPhone'] as String,
      json['friendName'] as String,
      json['productId'] as String,
      json['merchantId'] as String,
    );

Map<String, dynamic> _$SendGiftReqToJson(SendGiftReq instance) =>
    <String, dynamic>{
      'senderId': instance.senderId,
      'friendPhone': instance.friendPhone,
      'friendName': instance.friendName,
      'productId': instance.productId,
      'merchantId': instance.merchantId,
    };
