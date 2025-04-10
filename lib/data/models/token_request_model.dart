import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_request_model.freezed.dart';
part 'token_request_model.g.dart';

@freezed
class TokenRequestModel with _$TokenRequestModel {
  const factory TokenRequestModel({required String refreshToken}) =
      _TokenRequestModel;

  factory TokenRequestModel.fromJson(Map<String, dynamic> json) =>
      _$TokenRequestModelFromJson(json);
}
