import 'package:giftr/core/data/network/module/auth/LoginRes.dart';
import 'package:json_annotation/json_annotation.dart';

part 'SignupRes.g.dart';

@JsonSerializable()
class SignupRes {
  String message;
  SignupResData data;
  SignupRes(this.message, this.data);

  factory SignupRes.fromJson(Map<String, dynamic> json) => _$SignupResFromJson(json);
  Map<String, dynamic> toJson() => _$SignupResToJson(this);
}

@JsonSerializable()
class SignupResData{
  int otp;
  User user_details;
  SignupResData(this.otp, this.user_details);

  factory SignupResData.fromJson(Map<String, dynamic> json) => _$SignupResDataFromJson(json);
  Map<String, dynamic> toJson() => _$SignupResDataToJson(this);
}
