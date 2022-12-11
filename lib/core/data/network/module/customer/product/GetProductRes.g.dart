// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetProductRes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetProductRes _$GetProductResFromJson(Map<String, dynamic> json) =>
    GetProductRes(
      json['message'] as String,
      GetProductResData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetProductResToJson(GetProductRes instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

GetProductResData _$GetProductResDataFromJson(Map<String, dynamic> json) =>
    GetProductResData(
      (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetProductResDataToJson(GetProductResData instance) =>
    <String, dynamic>{
      'products': instance.products,
    };

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      json['id'] as String,
      json['product_name'] as String,
      json['merchant_id'] as String,
      json['product_category'] as String,
      json['description'] as String,
      json['location'] as String,
      json['city'] as String,
      json['latitude'] as String,
      json['longitude'] as String,
      json['country'] as String,
      json['currency'] as String,
      json['prize'] as String,
      (json['product_images'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      json['vocher_code'] as String,
      json['status'] as String,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'product_name': instance.product_name,
      'merchant_id': instance.merchant_id,
      'product_category': instance.product_category,
      'description': instance.description,
      'location': instance.location,
      'city': instance.city,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'country': instance.country,
      'currency': instance.currency,
      'prize': instance.prize,
      'vocher_code': instance.vocher_code,
      'status': instance.status,
      'product_images': instance.product_images,
    };
