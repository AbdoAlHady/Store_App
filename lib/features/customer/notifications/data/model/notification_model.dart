import 'package:json_annotation/json_annotation.dart';
part 'notification_model.g.dart';
@JsonSerializable()
class NotificationModel {
  @JsonKey(name: 'notification_id')
  final String notificationId;
  final String title;
  final String body;
  @JsonKey(name: 'created_at')
  final String createdAt;
  final bool isSeen;
  @JsonKey(name: 'product_id')
  final int productId;


  factory NotificationModel.fromJson(Map<String, dynamic> json) => _$NotificationModelFromJson(json);

  NotificationModel({required this.notificationId, required this.title, required this.body, required this.createdAt, required this.isSeen, required this.productId});

  Map<String, dynamic> toJson() => _$NotificationModelToJson(this);
  

}
