import 'package:flutter/material.dart';
import 'dart:convert';

class JsonArrayExercise extends StatefulWidget {
  const JsonArrayExercise({Key? key}) : super(key: key);

  @override
  _JsonArrayExerciseState createState() => _JsonArrayExerciseState();
}

class _JsonArrayExerciseState extends State<JsonArrayExercise> {
  String personJsonArray = """ 
    [
      {
        "name":"Mg Mg"
      },
      {
        "name": "Aung Aung"
      },
      {
        "name": "Mya Mya"
      }
    ]
  """;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Json array ex page"),
      ),
      body: ListView(
        children: [
          MaterialButton(
            color: Colors.amber,
            onPressed: () {
              List<dynamic> list = json.decode(personJsonArray);
              // list.forEach((element) {
              //   print(element);
              // });
              List<PersonOb> personList = [];
              list.forEach((element) {
                personList.add(PersonOb.fromMap(element));
              });

              personList.forEach((element) {
                print(element.name);
              });
            },
            child: Text("Change dart array"),
          )
        ],
      ),
    );
  }
}

class PersonOb {
  String name = '';

  PersonOb.fromMap(Map<String, dynamic> map) {
    name = map['name'];
  }
}
