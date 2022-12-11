import 'package:json_annotation/json_annotation.dart';

part 'GetReceivedGiftReq.g.dart';

@JsonSerializable()
class GetReceivedGiftReq {
  String phone;
  GetReceivedGiftReq(this.phone);

  factory GetReceivedGiftReq.fromJson(Map<String, dynamic> json) => _$GetReceivedGiftReqFromJson(json);
  Map<String, dynamic> toJson() => _$GetReceivedGiftReqToJson(this);
}