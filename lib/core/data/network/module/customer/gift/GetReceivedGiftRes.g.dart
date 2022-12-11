// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetReceivedGiftRes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetReceivedGiftRes _$GetReceivedGiftResFromJson(Map<String, dynamic> json) =>
    GetReceivedGiftRes(
      json['message'] as String,
      GetReceivedGiftResData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetReceivedGiftResToJson(GetReceivedGiftRes instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

GetReceivedGiftResData _$GetReceivedGiftResDataFromJson(
        Map<String, dynamic> json) =>
    GetReceivedGiftResData(
      (json['gifts'] as List<dynamic>)
          .map((e) => Gift.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetReceivedGiftResDataToJson(
        GetReceivedGiftResData instance) =>
    <String, dynamic>{
      'gifts': instance.gifts,
    };
