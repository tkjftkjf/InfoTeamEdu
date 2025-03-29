import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_edu_first_task/models/board_summary_model.dart';
import 'package:flutter_edu_first_task/models/user_model.dart';
import 'package:flutter_edu_first_task/models/image_model.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
class Post with _$Post {
  const factory Post({
    required String id,
    required String title,
    required List<String> tags,
    required BoardSummary board,
    required String createdAt,
    required UserModel createdBy,
    required List<Image> images,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
