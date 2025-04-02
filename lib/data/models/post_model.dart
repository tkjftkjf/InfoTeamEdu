import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_edu_first_task/data/models/board_summary_model.dart';
import 'package:flutter_edu_first_task/data/models/user_model.dart';
import 'package:flutter_edu_first_task/data/models/image_model.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
class PostModel with _$PostModel {
  const factory PostModel({
    required String id,
    required String title,
    required List<String> tags,
    required String body,
    required BoardSummaryModel board,
    required String createdAt,
    required UserModel createdBy,
    required List<ImageModel> images,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}
