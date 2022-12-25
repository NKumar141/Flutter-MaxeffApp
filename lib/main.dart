import 'package:flutter/material.dart';
import 'dart:async';
import 'firstpage.dart';

void main() => runApp(Splash());

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(milliseconds: 1700),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Firstpage())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(color: Colors.white),

      child: Image.asset('assets/Maxeff Tech-Solutions.gif',
          height: MediaQuery.of(context).size.height),
      //FlutterLogo(size: MediaQuery.of(context).size.height)); ,
    );
  }
}
