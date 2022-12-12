import 'package:giftr/core/data/network/module/auth/LoginRes.dart';
import 'package:json_annotation/json_annotation.dart';

part 'UploadAvatarRes.g.dart';

@JsonSerializable()
class UploadAvatarRes {
  UploadAvatarResData data;
  String message;
  UploadAvatarRes(this.data, this.message);

  factory UploadAvatarRes.fromJson(Map<String, dynamic> json) => _$UploadAvatarResFromJson(json);
  Map<String, dynamic> toJson() => _$UploadAvatarResToJson(this);
}

@JsonSerializable()
class UploadAvatarResData{
  User user;
  UploadAvatarResData(this.user);

  factory UploadAvatarResData.fromJson(Map<String, dynamic> json) => _$UploadAvatarResDataFromJson(json);
  Map<String, dynamic> toJson() => _$UploadAvatarResDataToJson(this);
}