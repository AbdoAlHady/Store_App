import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_response.g.dart';

@JsonSerializable()
class SignUpResponse {
  final SignUpDataModel data;

  SignUpResponse(this.data);
  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
}

@JsonSerializable()
class SignUpDataModel {
  final AddUserModel addUser;
  factory SignUpDataModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpDataModelFromJson(json);

  SignUpDataModel(this.addUser);
}

@JsonSerializable()
class AddUserModel {
  final String? email;
  final String? id;
  factory AddUserModel.fromJson(Map<String, dynamic> json) =>
      _$AddUserModelFromJson(json);

  AddUserModel(this.email, this.id);
}
