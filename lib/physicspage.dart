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
      margin: EdgeInsets.all(20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          primary: Colors.indigo.shade900,
          shape: StadiumBorder(),
        ),
        child: Text(
          s,
          style: TextStyle(fontSize: 12.0),
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
          Button('Alternating Current',
              'https://drive.google.com/file/d/1LLhq6XNUnvUag6BUJvAF2Ic1nVAiy-Yp/view?usp=share_link'),
          Button('Calorimetry',
              'https://drive.google.com/file/d/146QGqZjH4b2le4AKY8hfeI4aaFbdovka/view?usp=share_link'),
          Button('Current Electricity',
              'https://drive.google.com/file/d/1Wqpxaohlw9_3rykYg3muaK7Le4MZVKZi/view?usp=share_link'),
          Button('Uniform circular motion',
              'https://drive.google.com/file/d/1Y1hfyO4X8eXD48WF5UOa2FljklUcPCHz/view?usp=share_link'),
          Button('Elasticity',
              'https://drive.google.com/file/d/1kB6y497IKgjkATO88Xb7WukMYGFxWe7w/view?usp=share_link'),
          Button('Electromagnetic Induction',
              'https://drive.google.com/file/d/bc1qugrtknpjz52vc4m559q7zumkc4268kp7skrsee/view?usp=share_link'),
          Button('Electromagnetic Wave',
              'https://drive.google.com/file/d/1zuKWstoP5mvvmlqilOPunTonWtgLhtX2/view?usp=share_link'),
          Button('Electrostatics',
              'https://drive.google.com/file/d/18M2aqbc56m_Hf707__f2ktWISkxn3vJN/view?usp=share_link'),
          Button('Fluids',
              'https://drive.google.com/file/d/1UL-u9op38Bv5sYAg8yWR8msm0s56cjBq/view?usp=share_link'),
          Button('Gravitation',
              'https://drive.google.com/file/d/12cOYRSLuZBinf1mTOeQfOTbX4-tK34bt/view?usp=share_link'),
          Button('Heat and Temperature',
              'https://drive.google.com/file/d/1UcETAv4Gc6Hs5IPf0Qgho2ucrBee_bB8/view?usp=share_link'),
          Button('Heat Transfer',
              'https://drive.google.com/file/d/1ts_qrnaLHfVqfRjuIKdKQuDO3NxLXqww/view?usp=share_link'),
          Button('Kinematics',
              'https://drive.google.com/file/d/1pgUOQfIha52n41IWatRAbof8Onm-djTV/view?usp=share_link'),
          Button('Kinetic Theory of Gases',
              'https://drive.google.com/file/d/1FCcAgC6GWUO-8fRMvzfIZcLsb4odmn4U/view?usp=share_link'),
          Button('Magnetism',
              'https://drive.google.com/file/d/1pN12hBwilgPHdAiiRhdbNwM9I70zTksj/view?usp=share_link'),
          Button('Newtons laws of motion',
              'https://drive.google.com/file/d/bc1qugrtknpjz52vc4m559q7zumkc4268kp7skrsee/view?usp=share_link'),
          Button('Optics',
              'https://drive.google.com/file/d/1WNo79v-cl-yIvZoESPHkIUD4thYM2_TP/view?usp=share_link'),
          Button('Oscilation and SHM',
              'https://drive.google.com/file/d/1euJS4awnBlft01GFnLWunw_fVpTpbGLA/view?usp=share_link'),
          Button('Rotational Motion',
              'https://drive.google.com/file/d/12bCVfdIo3Al43bz3bu6Yt0-LXt55JPog/view?usp=share_link'),
          Button('Thermal Expansion',
              'https://drive.google.com/file/d/1AwCJUiKNMrTWboeGO1JA3N7sXMcbSzIv/view?usp=share_link'),
          Button('Theromodynamics',
              'https://drive.google.com/file/d/1-O29gQRDKf0yrZeNlgrM1SuyIKR40MTT/view?usp=share_link'),
          Button('Units and Dimensions',
              'https://drive.google.com/file/d/1S_ZqFchsuph3ETcoF-ACtQIQm9COMnan/view?usp=share_link'),
          Button('Waves',
              'https://drive.google.com/file/d/1FR0r2AVX7QEvd3o_SraThqOqavxygaWB/view?usp=share_link'),
          Button('Wave Motion',
              'https://drive.google.com/file/d/1jiSZumHDGVTKQWFoaNwZsFrR4lKrendd/view?usp=share_link'),
          Button('Work Enenrgy Power',
              'https://drive.google.com/file/d/1Wxpmof9R__foCI25bgeC9n36k7ufFJqI/view?usp=share_link'),
        ],
      )),
    );
  }
}
