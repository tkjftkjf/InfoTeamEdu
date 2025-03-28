import 'package:flutter_edu_first_task/models/board_summary_model.dart';
import 'package:flutter_edu_first_task/models/user.dart';
import 'package:flutter_edu_first_task/models/image_model.dart';

class Post {
  final String id;
  final String title;
  final List<String> tags;
  final BoardSummary board;
  final String createdAt;
  final User createdBy;
  final List<Image> images;
}
