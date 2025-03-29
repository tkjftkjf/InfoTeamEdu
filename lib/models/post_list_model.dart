import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_edu_first_task/models/post_model.dart';

part 'post_list_model.freezed.dart';
part 'post_list_model.g.dart';

@freezed
class PostList with _$PostList {
  const factory PostList({required int count, required List<Post> posts}) =
      _PostList;

  factory PostList.fromJson(Map<String, dynamic> json) =>
      _$PostListFromJson(json);
}
