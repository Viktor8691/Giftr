import 'package:json_annotation/json_annotation.dart';

part 'UpdateTokenRes.g.dart';

@JsonSerializable()
class UpdateTokenRes {
  String message;
  UpdateTokenRes(this.message);

  factory UpdateTokenRes.fromJson(Map<String, dynamic> json) => _$UpdateTokenResFromJson(json);
}