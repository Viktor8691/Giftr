import 'package:json_annotation/json_annotation.dart';

part 'UpdateTokenReq.g.dart';

@JsonSerializable()
class UpdateTokenReq {
  String userId, fcmToken;
  UpdateTokenReq(this.userId, this.fcmToken);
  Map<String, dynamic> toJson() => _$UpdateTokenReqToJson(this);
}