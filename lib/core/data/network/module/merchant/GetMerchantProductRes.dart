import 'package:json_annotation/json_annotation.dart';
import '../customer/product/GetProductRes.dart';

part 'GetMerchantProductRes.g.dart';

@JsonSerializable()
class GetMerchantProductRes{
  String message;
  GetMerchantProductResData data;
  GetMerchantProductRes(this.message, this.data);

  factory GetMerchantProductRes.fromJson(Map<String, dynamic> json) => _$GetMerchantProductResFromJson(json);
  Map<String, dynamic> toJson() => _$GetMerchantProductResToJson(this);
}

@JsonSerializable()
class GetMerchantProductResData {
  List<Product> products;
  GetMerchantProductResData(this.products);

  factory GetMerchantProductResData.fromJson(Map<String, dynamic> json) => _$GetMerchantProductResDataFromJson(json);
  Map<String, dynamic> toJson() => _$GetMerchantProductResDataToJson(this);
}
