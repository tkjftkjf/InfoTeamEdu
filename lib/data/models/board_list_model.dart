import 'package:flutter_edu_first_task/data/models/board_summary_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'board_list_model.freezed.dart';
part 'board_list_model.g.dart';

@freezed
class BoardListModel with _$BoardListModel {
  const factory BoardListModel({
    required int count,
    required List<BoardSummaryModel> list,
  }) = _BoardListModel;

  factory BoardListModel.fromJson(Map<String, dynamic> json) =>
      _$BoardListModelFromJson(json);
}
