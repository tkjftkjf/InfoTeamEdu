import 'package:flutter/material.dart';
import 'package:flutter_edu_first_task/pages/post_info.dart';

class Post extends StatelessWidget {
  const Post({super.key, required this.hasImage});

  final bool hasImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PostInfo()),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(14, 15, 14, 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "게시글 제목",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff252525),
              ),
            ),
            SizedBox(height: 7),
            hasImage
                ? ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                    "https://www.fakemagazine.kr/content/images/size/w1000/2023/02/ramune2020-1-copy_nowatermark.jpg",
                  ),
                )
                : Text(
                  "공지 내용",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff252525),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
