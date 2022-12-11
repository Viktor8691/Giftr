import 'package:giftr/core/data/network/module/customer/product/GetProductRes.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../auth/LoginRes.dart';

part 'GetSentGiftRes.g.dart';

@JsonSerializable()
class GetSentGiftRes {
  String message;
  GetSentGiftResData data;
  GetSentGiftRes(this.message, this.data);

  factory GetSentGiftRes.fromJson(Map<String, dynamic> json) => _$GetSentGiftResFromJson(json);
  Map<String, dynamic> toJson() => _$GetSentGiftResToJson(this);
}

@JsonSerializable()
class GetSentGiftResData{
  List<Gift> gifts;
  GetSentGiftResData(this.gifts);

  factory GetSentGiftResData.fromJson(Map<String, dynamic> json)=> _$GetSentGiftResDataFromJson(json);
  Map<String, dynamic> toJson() => _$GetSentGiftResDataToJson(this);
}

@JsonSerializable()
class Gift {
  String id, senderId, friendPhone, friendName, merchantId, createdAt;
  Product product;
  User? sender;
  Gift(this.id, this.senderId, this.friendPhone, this.friendName,
      this.merchantId, this.product, this.createdAt, this.sender);

  factory Gift.fromJson(Map<String, dynamic> json) => _$GiftFromJson(json);
  Map<String, dynamic> toJson() => _$GiftToJson(this);
}