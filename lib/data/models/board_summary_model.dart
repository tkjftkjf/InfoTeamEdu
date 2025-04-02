import 'package:flutter_edu_first_task/data/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'board_summary_model.freezed.dart';
part 'board_summary_model.g.dart';

@freezed
class BoardSummaryModel with _$BoardSummaryModel {
  const BoardSummaryModel._();
  factory BoardSummaryModel({
    required String id,
    required String title,
    required String createdAt,
    required UserModel creator,
  }) = _BoardSummaryModel;

  factory BoardSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$BoardSummaryModelFromJson(json);
}
