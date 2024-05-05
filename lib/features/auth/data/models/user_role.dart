import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_role.g.dart';
@ JsonSerializable()
class UserRole {
  final String? role;

  UserRole({required this.role});

  factory UserRole.fromJson(Map<String, dynamic> json) =>
      _$UserRoleFromJson(json);



}
