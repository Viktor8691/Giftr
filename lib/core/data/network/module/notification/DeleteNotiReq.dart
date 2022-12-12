import 'package:json_annotation/json_annotation.dart';

part 'DeleteNotiReq.g.dart';

@JsonSerializable()
class DeleteNotiReq {
  String phone;
  DeleteNotiReq(this.phone);

  Map<String, dynamic> toJson() => _$DeleteNotiReqToJson(this);
}