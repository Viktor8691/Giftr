import 'package:json_annotation/json_annotation.dart';

part 'DeleteNotiRes.g.dart';

@JsonSerializable()
class DeleteNotiRes {
  String message;
  DeleteNotiRes(this.message);

  factory DeleteNotiRes.fromJson(Map<String, dynamic> json) => _$DeleteNotiResFromJson(json);
}