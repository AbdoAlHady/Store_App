import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_role.g.dart';

@JsonSerializable()
class UserRole {
  final String? role;
  final int? id;


  factory UserRole.fromJson(Map<String, dynamic> json) =>
      _$UserRoleFromJson(json);

  UserRole(this.role, this.id);
}
