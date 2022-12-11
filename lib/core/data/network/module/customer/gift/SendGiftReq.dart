import 'package:json_annotation/json_annotation.dart';

part 'SendGiftReq.g.dart';

@JsonSerializable()
class SendGiftReq {
  String senderId, friendPhone, friendName, productId, merchantId;
  SendGiftReq(this.senderId, this.friendPhone, this.friendName, this.productId,
      this.merchantId);

  factory SendGiftReq.fromJson(Map<String, dynamic> json) => _$SendGiftReqFromJson(json);
  Map<String, dynamic> toJson() => _$SendGiftReqToJson(this);
}