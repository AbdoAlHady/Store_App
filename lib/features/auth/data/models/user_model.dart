import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_role.g.dart';

@JsonSerializable()
class UserModel {
  final String? role;
  final int? id;

  @JsonKey(name: 'name')
  final String? userName;
  @JsonKey(name: 'email')
  final String? userEmail;
  @JsonKey(name: 'avatar')
  final String? userImage;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserRoleFromJson(json);

  UserModel(this.role, this.id, this.userName, this.userEmail, this.userImage);

}
