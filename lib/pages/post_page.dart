import 'package:flutter/material.dart';
import 'package:flutter_edu_first_task/widgets/post_info_header.dart';
import 'package:flutter_edu_first_task/widgets/tag_box.dart';

class PostInfoPage extends StatelessWidget {
  PostInfoPage({super.key});
  final List<String> tags = ['#A', '#B', '#C'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PostInfoHeader(),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "게시글 제목",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "박진우",
                          style: TextStyle(
                            color: const Color(0xFF979797),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(
                          "2025. 03. 27",
                          style: TextStyle(
                            color: const Color(0xFF979797),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: tags.map((tag) => TagBox(tag: tag)).toList()),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 20),
                    Image.network(
                      "https://www.fakemagazine.kr/content/images/size/w1000/2023/02/ramune2020-1-copy_nowatermark.jpg",
                    ),
                    SizedBox(height: 20),
                    Text(
                      "오늘 아침에 일어나자마자 창밖을 봤는데, 하늘이 분홍색이랑 주황색으로 물들어 있었어요.\n사진으로는 다 담기지 않아서 아쉽지만, 기분 좋은 하루의 시작이었네요 😊\n다들 좋은 하루 보내세요!",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
