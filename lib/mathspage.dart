import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'aboutpage.dart';

class Mathspage extends StatelessWidget {
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
          //const url =
          //'https://drive.google.com/file/d/1xw3dF4st1jKdmG9ShAH1F4MWL5drSVtp/view?usp=drivesdk';
          launch(l, enableJavaScript: true);
        },
      ),
    );
  }
  // launchURL(String url) async {
  //   if (await canLaunch(url)) {
  //     await launch(url, enableJavaScript: true);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

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
          Button('Basic Maths',
              'https://drive.google.com/file/d/1xw3dF4st1jKdmG9ShAH1F4MWL5drSVtp/view?usp=drivesdk'),
          Button('Continuity',
              'https://drive.google.com/file/d/1xw3dF4st1jKdmG9ShAH1F4MWL5drSVtp/view?usp=drivesdk'),
          Button('Determinant',
              'https://drive.google.com/file/d/1y0dbDArEMxTFhvw_4mPQpFNGBhI1Ubbn/view?usp=drivesdk'),
          Button('Diffrentiablity',
              'https://drive.google.com/file/d/1y9tZHP47zEQqBQlE-C7OSElEMRvmpzzH/view?usp=drivesdk'),
          Button('Functions',
              'https://drive.google.com/file/d/1xtymRhAMJelcNt49YRe5gDXhVOlPMjOE/view?usp=drivesdk'),
          Button('Indefinite Integrals',
              'https://drive.google.com/file/d/1yAwtNu79-Fx45XVeUzU3Sz_Rp2XZtBe5/view?usp=drivesdk'),
          Button('Inverse Trignomentry',
              'https://drive.google.com/file/d/1xx5AEZ0AjaX4JFkYt7ZjwDDsW_vVCmBB/view?usp=drivesdk'),
          Button('Limit',
              'https://drive.google.com/file/d/1y2voYsZ5WoA5TDo4aB0pkL_PpP6fdMIY/view?usp=drivesdk'),
          Button('Matrices',
              'https://drive.google.com/file/d/1y2ol0GjnhuTLKY_cMOnT56nyCdwB6INd/view?usp=drivesdk'),
          Button('Diffrentiation',
              'https://drive.google.com/file/d/1yAo8JKYUiTsz71I_gLhz9lN9sOlejZpF/view?usp=drivesdk'),
        ],
      )),
    );
  }
}
