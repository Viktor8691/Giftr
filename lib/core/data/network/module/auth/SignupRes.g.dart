// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SignupRes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupRes _$SignupResFromJson(Map<String, dynamic> json) => SignupRes(
      json['message'] as String,
      SignupResData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignupResToJson(SignupRes instance) => <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

SignupResData _$SignupResDataFromJson(Map<String, dynamic> json) =>
    SignupResData(
      json['otp'] as int,
      User.fromJson(json['user_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignupResDataToJson(SignupResData instance) =>
    <String, dynamic>{
      'otp': instance.otp,
      'user_details': instance.user_details,
    };
