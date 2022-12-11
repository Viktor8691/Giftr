// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'VerifyOTPReq.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyOTPReq _$VerifyOTPReqFromJson(Map<String, dynamic> json) => VerifyOTPReq(
      json['otp'] as String,
      json['user_id'] as String,
    );

Map<String, dynamic> _$VerifyOTPReqToJson(VerifyOTPReq instance) =>
    <String, dynamic>{
      'otp': instance.otp,
      'user_id': instance.user_id,
    };
