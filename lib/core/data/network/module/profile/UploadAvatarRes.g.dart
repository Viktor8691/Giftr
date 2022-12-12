// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UploadAvatarRes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UploadAvatarRes _$UploadAvatarResFromJson(Map<String, dynamic> json) =>
    UploadAvatarRes(
      UploadAvatarResData.fromJson(json['data'] as Map<String, dynamic>),
      json['message'] as String,
    );

Map<String, dynamic> _$UploadAvatarResToJson(UploadAvatarRes instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };

UploadAvatarResData _$UploadAvatarResDataFromJson(Map<String, dynamic> json) =>
    UploadAvatarResData(
      User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UploadAvatarResDataToJson(
        UploadAvatarResData instance) =>
    <String, dynamic>{
      'user': instance.user,
    };
