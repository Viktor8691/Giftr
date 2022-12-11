import 'package:json_annotation/json_annotation.dart';

part 'VerifyOTPRes.g.dart';

@JsonSerializable()
class VerifyOTPRes {
  String message;
  VerifyOTPRes(this.message);

  factory VerifyOTPRes.fromJson(Map<String, dynamic> json) => _$VerifyOTPResFromJson(json);
  Map<String, dynamic> toJson() => _$VerifyOTPResToJson(this);
}