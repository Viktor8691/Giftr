import 'package:json_annotation/json_annotation.dart';

part 'LoginReq.g.dart';

@JsonSerializable()
class LoginReq {
  String email, password;
  LoginReq(this.email, this.password);

  factory LoginReq.fromJson(Map<String, dynamic> json) => _$LoginReqFromJson(json);
  Map<String, dynamic> toJson() => _$LoginReqToJson(this);
}