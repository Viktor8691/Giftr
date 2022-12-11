import 'package:json_annotation/json_annotation.dart';

part 'SignupReq.g.dart';

@JsonSerializable()
class SignupReq {
  String name, email, password, phone_no, type;

  SignupReq(
      this.name,
      this.email,
      this.password,
      this.phone_no,
      this.type);

  factory SignupReq.fromJson(Map<String, dynamic> json) => _$SignupReqFromJson(json);
  Map<String, dynamic> toJson() => _$SignupReqToJson(this);
}