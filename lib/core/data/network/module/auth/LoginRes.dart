import 'package:json_annotation/json_annotation.dart';

part 'LoginRes.g.dart';

@JsonSerializable()
class LoginRes {
  String message;
  LoginResData data;

  LoginRes(this.message, this.data);

  factory LoginRes.fromJson(Map<String, dynamic> json) => _$LoginResFromJson(json);
  Map<String, dynamic> toJson() => _$LoginResToJson(this);
}

@JsonSerializable()
class LoginResData{
  User user_details;
  LoginResData(this.user_details);

  factory LoginResData.fromJson(Map<String, dynamic> json) => _$LoginResDataFromJson(json);
  Map<String, dynamic> toJson() => _$LoginResDataToJson(this);
}

@JsonSerializable()
class User {
  String id, name, email, password, phone_no, status, type, otp_verify, avatar;

  User(
      this.id,
      this.name,
      this.email,
      this.password,
      this.phone_no,
      this.status,
      this.type,
      this.otp_verify,
      this.avatar);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}