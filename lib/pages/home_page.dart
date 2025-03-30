import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_edu_first_task/api/api_client.dart';
import 'package:flutter_edu_first_task/models/post_list_model.dart';
import 'package:flutter_edu_first_task/models/post_model.dart';
import 'package:flutter_edu_first_task/widgets/post_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final ApiClient apiClient = ApiClient(Dio());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: FutureBuilder<PostList>(
        future: apiClient.getPostList(),
        builder: (context, snapshot) {
          /* print(snapshot.error);
          print(snapshot.data); */
          /* 이 코드를 flutter web으로 빌드하면 오류남
          DioException [connection error]: The connection errored: The XMLHttpRequest onError callback was called. This typically indicates an error on the network layer. This indicates an error which most likely cannot be solved by the library.
           */
          if (snapshot.hasData) {
            PostList? postList = snapshot.data;
            if (postList != null) {
              List<Post> posts = postList.list;
              return ListView.builder(
                itemCount: postList.count,
                itemBuilder: (context, index) {
                  return PostWidget(post: posts[index]);
                },
              );
            }
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
