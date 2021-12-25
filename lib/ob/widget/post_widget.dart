import 'package:flutter/material.dart';
import 'package:json_array/ob/post.dart';

class PostWidget extends StatelessWidget {
  postOb PostOb;
  PostWidget(this.PostOb);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            PostOb.title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(PostOb.body),
        ],
      ),
    );
  }
}
