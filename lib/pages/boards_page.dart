import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_edu_first_task/api/api_client.dart';
import 'package:flutter_edu_first_task/data/models/board_list_model.dart';
import 'package:flutter_edu_first_task/data/models/board_summary_model.dart';
import 'package:flutter_edu_first_task/widgets/board_widget.dart';

class BoardsPage extends StatelessWidget {
  BoardsPage({super.key});
  final ApiClient apiClient = ApiClient(Dio());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: FutureBuilder<BoardList>(
        future: apiClient.getBoardList(),
        builder: (context, snapshot) {
          /* print(snapshot.error);
          print(snapshot.data); */
          /* 이 코드를 flutter web으로 빌드하면 오류남
          DioException [connection error]: The connection errored: The XMLHttpRequest onError callback was called. This typically indicates an error on the network layer. This indicates an error which most likely cannot be solved by the library.
           */
          if (snapshot.hasData) {
            BoardList? boardList = snapshot.data;
            if (boardList != null) {
              List<BoardSummary> boards = boardList.list;
              return ListView.builder(
                itemCount: boardList.count,
                itemBuilder: (context, index) {
                  return BoardWidget(boardSummary: boards[index]);
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
