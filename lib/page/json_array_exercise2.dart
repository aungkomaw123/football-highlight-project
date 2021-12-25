import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:json_array/ob/post.dart';
import 'package:json_array/ob/widget/post_widget.dart';

class JsonArrayExercise2 extends StatefulWidget {
  const JsonArrayExercise2({Key? key}) : super(key: key);

  @override
  _JsonArrayExercise2State createState() => _JsonArrayExercise2State();
}

class _JsonArrayExercise2State extends State<JsonArrayExercise2> {
  Uri url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
  List<postOb> postList = [];
  getData() async {
    var response = await http.get(url);

    if (response.statusCode == 200) {
      print(response.body);

      List<dynamic> list = json.decode(response.body);
      list.forEach((element) {
        postList.add(postOb.fromMap(element));
      });

      setState(() {});
    } else
      print('error');
  }

  @override
  void initState() {
    getData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Json Array Exercise 2'),
      ),
      body: ListView.builder(
        itemCount: postList.length,
        itemBuilder: (context, index) {
          return PostWidget(postList[index]);
        },
        padding: EdgeInsets.all(10),
      ),
    );
  }
}
