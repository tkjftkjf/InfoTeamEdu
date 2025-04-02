import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter_edu_first_task/data/models/board_list_model.dart';
import 'package:flutter_edu_first_task/data/models/post_list_model.dart';
import 'package:flutter_edu_first_task/data/models/post_model.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "https://api.newbie.gistory.me")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("/boards")
  Future<BoardListModel> getBoardList();

  @GET("/posts")
  Future<PostListModel> getPostList();

  @GET("/post/{uuid}")
  Future<PostModel> getPost(@Path('uuid') String uuid);
}
