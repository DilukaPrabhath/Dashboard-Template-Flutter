import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Facebook",
      debugShowCheckedModeBanner: false,
      home: Facebook(),
    );
  }
}

class Facebook extends StatefulWidget {
  @override
  _FacebookState createState() => _FacebookState();
}

class _FacebookState extends State<Facebook> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        title: Text("Facebook"),
        actions: <Widget>[
         
        ],
      ),
      url: "https://www.facebook.com/",
      initialChild: Center(
        child: CircularProgressIndicator(),
      ),
    );;
  }
}