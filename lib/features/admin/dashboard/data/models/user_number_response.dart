import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_number_response.g.dart';

@JsonSerializable()
class UsersNumberResponse {
  final UsersDataModel? data;
  factory UsersNumberResponse.fromJson(Map<String, dynamic> json) =>
      _$UsersNumberResponseFromJson(json);

  UsersNumberResponse(this.data);

  String get usersNumber {
    if (data?.users == null) {
      return '0';
    }
    return data!.users!.length.toString();
  }
}

@JsonSerializable()
class UsersDataModel {
  final List<UsersDataModel>? users;

  UsersDataModel(this.users);
  factory UsersDataModel.fromJson(Map<String, dynamic> json) =>
      _$UsersDataModelFromJson(json);
}

@JsonSerializable()
class UsersNumberModel {
  final String? name;

  UsersNumberModel(this.name);

  factory UsersNumberModel.fromJson(Map<String, dynamic> json) =>
      _$UsersNumberModelFromJson(json);
}
