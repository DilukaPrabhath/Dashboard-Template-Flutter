import 'package:flutter/material.dart';
import 'dashbord.dart';
import 'dart:async';


void main(){
runApp(
  MaterialApp(
    home: MyApp(),
  )
);
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(
      seconds:3
       ),
       (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage(),),);
       },
       );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlutterLogo(
          size: 200,
        ),
      ),
    );
  }
}