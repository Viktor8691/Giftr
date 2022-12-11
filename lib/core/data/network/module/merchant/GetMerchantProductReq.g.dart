// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetMerchantProductReq.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetMerchantProductReq _$GetMerchantProductReqFromJson(
        Map<String, dynamic> json) =>
    GetMerchantProductReq(
      json['merchantId'] as String,
      json['page'] as String,
      json['limit'] as String,
    );

Map<String, dynamic> _$GetMerchantProductReqToJson(
        GetMerchantProductReq instance) =>
    <String, dynamic>{
      'merchantId': instance.merchantId,
      'page': instance.page,
      'limit': instance.limit,
    };
