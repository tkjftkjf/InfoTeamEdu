import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter_edu_first_task/models/board_list_model.dart';
import 'package:flutter_edu_first_task/models/post_list_model.dart';
import 'package:flutter_edu_first_task/models/post_model.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "https://api.newbie.gistory.me")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("/boards")
  Future<BoardList> getBoards();

  @GET("/posts")
  Future<PostList> getPosts();

  @GET("/post/{uuid}")
  Future<Post> getPost(@Path('uuid') String uuid);
}
