import 'package:json_annotation/json_annotation.dart';

part 'UploadAvatarReq.g.dart';

@JsonSerializable()
class UploadAvatarReq {
  String userId;
  @JsonKey(ignore: true) String filePath = '';
  UploadAvatarReq(this.userId);

  Map<String, dynamic> toJson() => _$UploadAvatarReqToJson(this);
}