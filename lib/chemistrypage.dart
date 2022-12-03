import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'aboutpage.dart';

class Chemistrypage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home3(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home3 extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Home3> {
  Button(String s, String l) {
    return Container(
      margin: EdgeInsets.all(25),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          primary: Colors.indigo.shade900,
          shape: StadiumBorder(),
        ),
        child: Text(
          s,
          style: TextStyle(fontSize: 15.0),
        ),
        onPressed: () {
          launch(l, enableJavaScript: true);
        },
      ),
    );
  }
  // const url =
  //               'https://drive.google.com/file/d/1xw3dF4st1jKdmG9ShAH1F4MWL5drSVtp/view?usp=drivesdk';
  //           launch(url, enableJavaScript: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Maxeff Application"),
        centerTitle: true,
        // actions: [
        //   IconButton(
        //     icon: Icon(Icons.adb_outlined),
        //     onPressed: () {
        //       Navigator.push(context,
        //           MaterialPageRoute(builder: (context) => Aboutpage()));
        //     },
        //   ),
        // ],
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
          child: ListView(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Button('Mole Concept',
              'https://drive.google.com/file/d/1ZESJAjthN3KCPDNzWuGbsFIYi0Z0IQHt/view?usp=drivesdk'),
          Button('Solid State',
              'https://drive.google.com/file/d/1YwJX-wbwRQBO_3TWvbXYnmMBavwxFlco/view?usp=drivesdk'),
          Button('Chemical Kinetics',
              'https://drive.google.com/file/d/1ZmSuWsxFYhyXiGnIhaaPn2239qpcZuuc/view?usp=drivesdk'),
          Button('Chemical Equilibrium',
              'https://drive.google.com/file/d/1Znc4DUfmPViHz_nrLB4qC8XLQ7wpIMVz/view?usp=drivesdk'),
          Button('Radioactivity',
              'https://drive.google.com/file/d/1ZAnm7Q4NCHmScQWbB6BaaOm_wprD3raK/view?usp=drivesdk'),
          Button('Electrochemistry',
              'https://drive.google.com/file/d/1Zez_-LeWjj5f6_qtisPQsfPMtF2mH9Yv/view?usp=drivesdk'),
          Button('Ionic Equilibrium',
              'https://drive.google.com/file/d/1ZNUJgOUHcog_Soph6hU4X3PqfilI7c-E/view?usp=drivesdk'),
          Button('Liquid',
              'https://drive.google.com/file/d/1ZHrL1VZdvJ7ZISq610K8i-Vqi9nmFwN0/view?usp=drivesdk'),
          Button('Redox',
              'https://drive.google.com/file/d/1Z7xQhqZlCZkE1nGFJUFG6CPJqnZhwKC3/view?usp=drivesdk'),
          Button('Surface Chemistry',
              'https://drive.google.com/file/d/1Yv0Lpkk2tLq5Al6hIHN0nfwVlqszpR4f/view?usp=drivesdk'),
        ],
      )),
    );
  }
}
