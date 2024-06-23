
import 'package:json_annotation/json_annotation.dart';
part 'search_request_body.g.dart';
@JsonSerializable()
class SearchRequestBody {
  final int? productMin;
  final int? productMax;
  final String? productName;

  SearchRequestBody({required this.productMin, required this.productMax, required this.productName});
  Map<String, dynamic> toJson() => _$SearchRequestBodyToJson(this);

}
 