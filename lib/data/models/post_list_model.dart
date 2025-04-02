import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_edu_first_task/data/models/post_model.dart';

part 'post_list_model.freezed.dart';
part 'post_list_model.g.dart';

@freezed
class PostListModel with _$PostListModel {
  const factory PostListModel({
    required int count,
    required List<PostModel> list,
  }) = _PostListModel;

  factory PostListModel.fromJson(Map<String, dynamic> json) =>
      _$PostListModelFromJson(json);
}
