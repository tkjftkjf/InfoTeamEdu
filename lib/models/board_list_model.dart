import 'package:flutter_edu_first_task/models/board_summary_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'board_list_model.freezed.dart';
part 'board_list_model.g.dart';

@freezed
class BoardList with _$BoardList {
  const factory BoardList({
    required int count,
    required List<BoardSummary> boards,
  }) = _BoardList;

  factory BoardList.fromJson(Map<String, dynamic> json) =>
      _$BoardListFromJson(json);
}
