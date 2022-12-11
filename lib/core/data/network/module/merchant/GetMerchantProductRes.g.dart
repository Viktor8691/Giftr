// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetMerchantProductRes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetMerchantProductRes _$GetMerchantProductResFromJson(
        Map<String, dynamic> json) =>
    GetMerchantProductRes(
      json['message'] as String,
      GetMerchantProductResData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetMerchantProductResToJson(
        GetMerchantProductRes instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

GetMerchantProductResData _$GetMerchantProductResDataFromJson(
        Map<String, dynamic> json) =>
    GetMerchantProductResData(
      (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetMerchantProductResDataToJson(
        GetMerchantProductResData instance) =>
    <String, dynamic>{
      'products': instance.products,
    };
