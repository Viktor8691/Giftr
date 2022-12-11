import 'package:json_annotation/json_annotation.dart';

part 'GetCustomerNotiRes.g.dart';

@JsonSerializable()
class GetCustomerNotiRes {
  GetCustomerNotiResData data;
  String message;
  GetCustomerNotiRes(this.data, this.message);

  factory GetCustomerNotiRes.fromJson(Map<String, dynamic> json) => _$GetCustomerNotiResFromJson(json);
}

@JsonSerializable()
class GetCustomerNotiResData{
  List<Notification> notifications;
  GetCustomerNotiResData(this.notifications);

  factory GetCustomerNotiResData.fromJson(Map<String, dynamic> json) => _$GetCustomerNotiResDataFromJson(json);
}

@JsonSerializable()
class Notification {
  String id, senderId, receiverPhone, merchantId, title, content, type, giftId, createdAt;

  Notification(this.id, this.senderId, this.receiverPhone, this.merchantId,
      this.title, this.content, this.type, this.giftId, this.createdAt);

  factory Notification.fromJson(Map<String, dynamic> json) => _$NotificationFromJson(json);
}