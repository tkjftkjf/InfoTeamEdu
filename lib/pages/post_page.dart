import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_edu_first_task/data/models/post_model.dart';
import 'package:flutter_edu_first_task/widgets/post_info_header.dart';
import 'package:flutter_edu_first_task/widgets/tag_box.dart';

class PostInfoPage extends StatelessWidget {
  const PostInfoPage({super.key, required this.post});
  final PostModel post;

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
                      post.title,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          post.createdBy.nickname,
                          style: TextStyle(
                            color: const Color(0xFF979797),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(
                          post.createdAt,
                          style: TextStyle(
                            color: const Color(0xFF979797),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children:
                          post.tags.map((tag) => TagWidget(tag: tag)).toList(),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 20),
                    ...post.images.map(
                      (image) => Image.memory(
                        width: double.infinity,
                        base64Decode(image.image),
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      post.body,
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
