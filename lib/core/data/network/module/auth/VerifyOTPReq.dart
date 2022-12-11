import 'package:json_annotation/json_annotation.dart';

part 'VerifyOTPReq.g.dart';

@JsonSerializable()
class VerifyOTPReq {
  String otp, user_id;
  VerifyOTPReq(this.otp, this.user_id);

  factory VerifyOTPReq.fromJson(Map<String, dynamic> json) => _$VerifyOTPReqFromJson(json);
  Map<String, dynamic> toJson() => _$VerifyOTPReqToJson(this);
}