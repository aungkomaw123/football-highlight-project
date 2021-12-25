import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';
// import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:json_array/ob/widget/highlight_ob.dart';
// import 'package:flutter_html/flutter_html.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HighLightDetail extends StatelessWidget {
  // final bool webView;
  HighLightOb hlob;

  HighLightDetail(this.hlob);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text(hlob.side1.name + ' Vs ' + hlob.side2.name),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            child: Html(data: hlob.embed),
          ),
          Text(
            ' LEAGUE: ' + hlob.competition.name,
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.amber),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 3.0),
            child: Text(
              'Match : ' + hlob.side1.name + ' VS ' + hlob.side2.name,
              style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: Container(
              height: 700,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Html(data: hlob.videos[index].embed),
                    ],
                  );
                },
                itemCount: hlob.videos.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
