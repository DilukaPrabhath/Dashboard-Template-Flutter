import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';


class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Youtube",
      debugShowCheckedModeBanner: false,
      home: Youtube(),
    );
  }
}

class Youtube extends StatefulWidget {
  @override
  _YoutubeState createState() => _YoutubeState();
}

class _YoutubeState extends State<Youtube> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        title: Text("Youtube"),
        actions: <Widget>[
         
        ],
      ),
      url: "https://www.youtube.com/",
      initialChild: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}