
import 'package:json_annotation/json_annotation.dart';
part 'get_all_users_response.g.dart';

@JsonSerializable()
class GetAllUsersResponse{
  final GetAllUsersData data;

  GetAllUsersResponse(this.data);
  factory GetAllUsersResponse.fromJson(Map<String, dynamic> json) => _$GetAllUsersResponseFromJson(json);

  
}
@JsonSerializable()
class GetAllUsersData{
  final List<GetAllUsersModel>? users;

  GetAllUsersData(this.users);
  factory GetAllUsersData.fromJson(Map<String, dynamic> json) => _$GetAllUsersDataFromJson(json);
  
}
@JsonSerializable()
class GetAllUsersModel{
  final String? id;
  final String? name;
  final String? email;

  GetAllUsersModel(this.id, this.name, this.email);
  factory GetAllUsersModel.fromJson(Map<String, dynamic> json) => _$GetAllUsersModelFromJson(json);
  
}