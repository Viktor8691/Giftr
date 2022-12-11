import 'package:json_annotation/json_annotation.dart';

part 'GetSentGiftReq.g.dart';

@JsonSerializable()
class GetSentGiftReq{
  String senderId;
  GetSentGiftReq(this.senderId);

  factory GetSentGiftReq.fromJson(Map<String, dynamic> json) => _$GetSentGiftReqFromJson(json);
  Map<String, dynamic> toJson() => _$GetSentGiftReqToJson(this);
}