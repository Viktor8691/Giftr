import 'package:json_annotation/json_annotation.dart';

part 'LoginRequest.g.dart';

@JsonSerializable()
class LoginRequest {
  final String email, password;
  LoginRequest(this.email, this.password);
}