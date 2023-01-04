import 'package:flutter/material.dart';
import 'physicspage.dart';
import 'mathspage.dart';
import 'chemistrypage.dart';
import 'aboutpage.dart';

class Firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home1(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home1 extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        title: Text("JEE Notes"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.code_sharp,
              size: 24,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => aboutpage()));
            },
          ),
        ],
        elevation: 10,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue.shade900, Colors.red.shade900],
                end: Alignment.topLeft,
                begin: Alignment.bottomRight),
          ),
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                    primary: Colors.deepPurpleAccent,
                    shape: StadiumBorder(),
                  ),
                  child: Text(
                    'Physics',
                    style: TextStyle(fontSize: 30.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Physicspage()),
                    );
                  },
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(25),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                primary: Colors.deepPurpleAccent,
                shape: StadiumBorder(),
              ),
              child: Text(
                'Mathematics',
                style: TextStyle(fontSize: 30.0),
              ),
              // color: Colors.blueAccent,
              // textColor: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Mathspage()));
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(25),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                primary: Colors.deepPurpleAccent,
                shape: StadiumBorder(),
              ),
              child: Text(
                'Chemistry',
                style: TextStyle(fontSize: 30.0),
              ),
              // color: Colors.blueAccent,
              // textColor: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Chemistrypage()));
              },
            ),
          ),
        ],
      )),
    );
  }
}
