import 'package:giftr/core/data/network/module/auth/LoginRes.dart';
import 'package:giftr/core/data/network/module/customer/product/GetProductRes.dart';
import 'package:json_annotation/json_annotation.dart';

import 'GetSentGiftRes.dart';

part 'GetReceivedGiftRes.g.dart';

@JsonSerializable()
class GetReceivedGiftRes {
  String message;
  GetReceivedGiftResData data;
  GetReceivedGiftRes(this.message, this.data);

  factory GetReceivedGiftRes.fromJson(Map<String, dynamic> json) => _$GetReceivedGiftResFromJson(json);
  Map<String, dynamic> toJson() => _$GetReceivedGiftResToJson(this);
}

@JsonSerializable()
class GetReceivedGiftResData{
  List<Gift> gifts;
  GetReceivedGiftResData(this.gifts);

  factory GetReceivedGiftResData.fromJson(Map<String, dynamic> json) => _$GetReceivedGiftResDataFromJson(json);
  Map<String, dynamic> toJson() => _$GetReceivedGiftResDataToJson(this);
}