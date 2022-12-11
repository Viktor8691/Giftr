import 'package:json_annotation/json_annotation.dart';

part 'GetProductReq.g.dart';

@JsonSerializable()
class GetProductReq {
  String page, limit;
  GetProductReq(this.page, this.limit);

  factory GetProductReq.fromJson(Map<String, dynamic> json) => _$GetProductReqFromJson(json);
  Map<String, dynamic> toJson() => _$GetProductReqToJson(this);
}