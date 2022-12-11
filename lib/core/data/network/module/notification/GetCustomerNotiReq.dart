import 'package:json_annotation/json_annotation.dart';

part 'GetCustomerNotiReq.g.dart';

@JsonSerializable()
class GetCustomerNotiReq {
  String phone;
  GetCustomerNotiReq(this.phone);

  Map<String, dynamic> toJson() => _$GetCustomerNotiReqToJson(this);
}