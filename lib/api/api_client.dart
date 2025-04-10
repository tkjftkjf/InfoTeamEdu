import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter_edu_first_task/data/models/board_list_model.dart';
import 'package:flutter_edu_first_task/data/models/post_list_model.dart';
import 'package:flutter_edu_first_task/data/models/post_model.dart';
import 'package:flutter_edu_first_task/data/models/token_response_model.dart';
import 'package:flutter_edu_first_task/data/models/login_request_model.dart';
import 'package:flutter_edu_first_task/data/models/register_request_model.dart';
import 'package:flutter_edu_first_task/data/models/token_request_model.dart';
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

  @POST("/auth/login")
  Future<TokenResponseModel> login(@Body() LoginRequestModel loginRequestModel);

  @POST("/auth/register")
  Future<void> register(@Body() RegisterRequestModel registerRequestModel);

  @POST("/auth/refresh")
  Future<TokenResponseModel> refresh(
    @Body() TokenRequestModel tokenRequestModel,
  );
}
