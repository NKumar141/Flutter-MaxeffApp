import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'aboutpage.dart';

class Physicspage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home2(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home2 extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Home2> {
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
          Button('Work Power Energy',
              'https://drive.google.com/file/d/1Ec2usSIQBeJv639mtWPsL8RKAE9vMBqM/view?usp=sharing'),
          Button('Thermodynamics',
              'https://drive.google.com/file/d/1SIAeDtgMJ3GbqrigLrvhkmS8HMneA6J4/view?usp=sharing'),
          Button('Rotational Motion',
              'https://drive.google.com/file/d/12PP1lhCXcN1CUyWN1AeeU1iTWTjdkHet/view?usp=sharing'),
          Button('Optics',
              'https://drive.google.com/file/d/1t4sRnLip_RWJrijyNJrY_9XPkfecKi-0/view?usp=sharing'),
          Button('Kinematics',
              'https://drive.google.com/file/d/1DPjSzfmjsnCdWeL4-Xn-460sKk75vazz/view?usp=sharing'),
          Button('Electrostatics',
              'https://drive.google.com/file/d/1iVFxOCKkiqBtcVMh7cF2raXuAD-QfsIM/view?usp=sharing'),
          Button('Electromagnitic Induction',
              'https://drive.google.com/file/d/1vMCd2yZ2xoJGBA_MZ20Vn37inrkdIcKr/view?usp=sharing'),
          Button('Circular Motion',
              'https://drive.google.com/file/d/1BeILn4NkYqJqZaPCcuvHu9oAPGmCeyc_/view?usp=sharing'),
          Button('Calorimetry',
              'https://drive.google.com/file/d/1J8ghNq9Q2EpIAQkqTqLvt6SpXiTKcGB0/view?usp=sharing'),
          Button('Alternating Current',
              'https://drive.google.com/file/d/1AshgYwa8-mtuYmyWv3l1GGUx0zj1mRbA/view?usp=sharing'),
        ],
      )),
    );
  }
}
