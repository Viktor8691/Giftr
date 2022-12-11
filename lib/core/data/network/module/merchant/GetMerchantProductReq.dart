import 'package:json_annotation/json_annotation.dart';

part 'GetMerchantProductReq.g.dart';
@JsonSerializable()
class GetMerchantProductReq {
  String merchantId, page, limit;
  GetMerchantProductReq(this.merchantId, this.page, this.limit);

  factory GetMerchantProductReq.fromJson(Map<String, dynamic> json) => _$GetMerchantProductReqFromJson(json);
  Map<String, dynamic> toJson() => _$GetMerchantProductReqToJson(this);
}