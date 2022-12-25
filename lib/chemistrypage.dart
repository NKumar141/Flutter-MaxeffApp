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
        title: Text("JEE Notes"),
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
          Button('D&F-Block',
              'https://drive.google.com/file/d/1icePjuhndZghOLoQp85ukMqWMCnM0pvT/view?usp=share_link'),
          Button('Hydrogen',
              'https://drive.google.com/file/d/13bKWv2ZY4Hf8WwSKEjz66lFTGKg_Cadv/view?usp=share_link'),
          Button('P-Block',
              'https://drive.google.com/file/d/1d-_lgrcncncPm_m9ztmVsCKFPdtPPMPN/view?usp=sharing'),
          Button('Periodic Table',
              'https://drive.google.com/file/d/1wzHMBPQuvdYsXcg6dkzCLcRq_7KMy1Fh/view?usp=sharing'),
          Button('Redox Reactions',
              'https://drive.google.com/file/d/bc1qugrtknpjz52vc4m559q7zumkc4268kp7skrsee/view?usp=sharing'),
          Button('Chemical Equilibrium',
              'https://drive.google.com/file/d/bc1qugrtknpjz52vc4m559q7zumkc4268kp7skrsee/view?usp=sharing'),
          Button('Chemical Kinetics',
              'https://drive.google.com/file/d/1MdsJz9LQVhMj2eAgM9IF1Kdugndk7S9H/view?usp=share_link'),
          Button('ElectroChemistry',
              'https://drive.google.com/file/d/1ztbjX44vVLIZUclUs_0Jju8hJSAI1w9r/view?usp=share_link'),
          Button('Ionic Equilibrium',
              'https://drive.google.com/file/d/1ccgjmoIjG7ofKD8MDukUD_TEZuI5UlLr/view?usp=share_link'),
          Button('Liquid Soln',
              'https://drive.google.com/file/d/1iHJBhIJ0xwbEY04TyyouVtyY3CAg8o25/view?usp=sharing'),
          Button('Mole Concept',
              'https://drive.google.com/file/d/12VwVyr2mJxYi0DIVZPjhNm3h0Y-rgCb3/view?usp=share_link'),
          Button('Radioactivity',
              'https://drive.google.com/file/d/1mukU4QYekuRoBUJLHRBUgs_o6qsGfmqo/view?usp=share_link'),
          Button('Redox2',
              'https://drive.google.com/file/d/1JLBf7wC8HH8wWEz985mNpgR_d-_OwRDg/view?usp=share_link'),
          Button('Solid State',
              'https://drive.google.com/file/d/1GYQ1-Bv3YAbFjyN-LxpniWi_KoGTlmjZ/view?usp=share_link'),
          Button('Surfacechemistry',
              'https://drive.google.com/file/d/1KqbmxcbwroriUMNAl8aK1Uf5jy2Zf9N_/view?usp=share_link'),
          Button('Organic Reaction Mechanisms',
              'https://drive.google.com/file/d/1aLuLSnlVHx8O1AT2OVcIAWEclxw4uOcB/view?usp=share_link'),
          Button('Organic Distintion Tests',
              'https://drive.google.com/file/d/1QT54EahjrhPSiwBeY_iTMQ0SNj90ujDX/view?usp=share_link'),
          Button('Organic Conversions',
              'https://drive.google.com/file/d/1IzQUm1-NBqey9THEyYJ7TwkuKpS6iNYT/view?usp=share_link'),
          Button('Organic Named Reactions',
              'https://drive.google.com/file/d/1v00J10CWj1IFPap32NhEAWZAZKKIpX3N/view?usp=share_link'),
          Button('Organic Reagents',
              'https://drive.google.com/file/d/1EDiHchffIFiomweTeowsf6k-O7BRFljP/view?usp=share_link'),
        ],
      )),
    );
  }
}
