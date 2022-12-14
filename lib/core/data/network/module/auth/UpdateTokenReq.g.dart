// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UpdateTokenReq.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateTokenReq _$UpdateTokenReqFromJson(Map<String, dynamic> json) =>
    UpdateTokenReq(
      json['userId'] as String,
      json['fcmToken'] as String,
    );

Map<String, dynamic> _$UpdateTokenReqToJson(UpdateTokenReq instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'fcmToken': instance.fcmToken,
    };
