import 'package:flutter/material.dart';
import 'package:json_array/ob/widget/highlight_detail.dart';
import 'package:json_array/ob/widget/highlight_ob.dart';
import 'package:http/http.dart ' as http;
import 'dart:convert';

import 'package:json_array/ob/widget/highlight_widget.dart';

class Highlight extends StatefulWidget {
  const Highlight({Key? key}) : super(key: key);

  @override
  _HighlightState createState() => _HighlightState();
}

class _HighlightState extends State<Highlight> {
  var _scaffoldKey = GlobalKey<ScaffoldState>();

  Uri url = Uri.parse('https://www.scorebat.com/video-api/v1/');

  List<HighLightOb> highList = [];

  bool loading = true;
  getData() async {
    var response = await http.get(url);
    print(response.body);
    if (response.statusCode == 200) {
      List<dynamic> list = json.decode(response.body);

      list.forEach((element) {
        highList.add(HighLightOb.fromJson(element));
      });

      setState(() {
        loading = false;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      // backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        centerTitle: true,
        title: const Text(
          "Football Highlight by Aung Ko Maw ",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: loading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              // scrollDirection: Axis.horizontal,
              itemCount: highList.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return HighLightDetail(highList[index]);
                    }));
                  },
                  child: HighLightWidget(highList[index]),
                );
              },
            ),
    );
  }
}
