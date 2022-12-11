import 'package:json_annotation/json_annotation.dart';

part 'SendGiftRes.g.dart';

@JsonSerializable()
class SendGiftRes {
  String message;
  SendGiftRes(this.message);

  factory SendGiftRes.fromJson(Map<String, dynamic> json) => _$SendGiftResFromJson(json);
  Map<String, dynamic> toJson() => _$SendGiftResToJson(this);
}