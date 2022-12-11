// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LoginRes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRes _$LoginResFromJson(Map<String, dynamic> json) => LoginRes(
      json['message'] as String,
      LoginResData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResToJson(LoginRes instance) => <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

LoginResData _$LoginResDataFromJson(Map<String, dynamic> json) => LoginResData(
      User.fromJson(json['user_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResDataToJson(LoginResData instance) =>
    <String, dynamic>{
      'user_details': instance.user_details,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      json['id'] as String,
      json['name'] as String,
      json['email'] as String,
      json['password'] as String,
      json['phone_no'] as String,
      json['status'] as String,
      json['type'] as String,
      json['otp_verify'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'phone_no': instance.phone_no,
      'status': instance.status,
      'type': instance.type,
      'otp_verify': instance.otp_verify,
    };
