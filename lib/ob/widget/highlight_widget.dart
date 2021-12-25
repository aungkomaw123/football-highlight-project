import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:json_array/ob/widget/highlight_ob.dart';

class HighLightWidget extends StatelessWidget {
  HighLightOb hlob;
  HighLightWidget(this.hlob);
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.blueGrey,
      child: Column(
        children: [
          Container(
            height: 300,
            width: 400,
            child: Image.network(
              hlob.thumbnail,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            hlob.title,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.amber),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
