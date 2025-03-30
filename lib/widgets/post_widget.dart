import 'package:flutter/material.dart';
import 'package:flutter_edu_first_task/models/post_model.dart';
import 'package:flutter_edu_first_task/pages/post_page.dart';
import 'dart:convert';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key, required this.post});
  final Post post;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PostInfoPage()),
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
              post.title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff252525),
              ),
            ),
            SizedBox(height: 7),
            (post.images.isNotEmpty)
                ? ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.memory(
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                    base64Decode(post.images.first.image),
                  ),
                )
                : Text(
                  post.body,
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
