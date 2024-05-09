import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_request_body.g.dart';

@JsonSerializable()
class SignUpRequestBody {
  final String name;
  final String email;
  final String password;
  final String avatar;

  SignUpRequestBody(this.name, this.email, this.password,this.avatar);

  Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);
}
