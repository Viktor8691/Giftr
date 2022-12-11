// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SignupReq.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupReq _$SignupReqFromJson(Map<String, dynamic> json) => SignupReq(
      json['name'] as String,
      json['email'] as String,
      json['password'] as String,
      json['phone_no'] as String,
      json['type'] as String,
    );

Map<String, dynamic> _$SignupReqToJson(SignupReq instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'phone_no': instance.phone_no,
      'type': instance.type,
    };
