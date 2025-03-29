import 'package:flutter_edu_first_task/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'board_summary_model.freezed.dart';
part 'board_summary_model.g.dart';

@freezed
class BoardSummary with _$BoardSummary {
  const BoardSummary._();
  factory BoardSummary({
    required String id,
    required String title,
    required String createdAt,
    required UserModel creator,
  }) = _BoardSummary;

  factory BoardSummary.fromJson(Map<String, dynamic> json) =>
      _$BoardSummaryFromJson(json);
}
