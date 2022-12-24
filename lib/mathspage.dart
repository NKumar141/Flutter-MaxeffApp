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
          Button('3D Geometry',
              'https://drive.google.com/file/d/bc1qugrtknpjz52vc4m559q7zumkc4268kp7skrsee/view?usp=share_link'),
          Button('3D Geometry 2',
              'https://drive.google.com/file/d/1iMRb9CrnUZdl7tRDOdvPzxojnosov0rm/view?usp=share_link'),
          Button('Application Of Derivatives',
              'https://drive.google.com/file/d/1hbHWhLc537aaTmBRtu632jhS6eBj0lk4/view?usp=share_link'),
          Button('Area using Definite Integration',
              'https://drive.google.com/file/d/1sIB7q204C7ytj6LFqs5klHPnS3Ad_dbQ/view?usp=share_link'),
          Button('Circle',
              'https://drive.google.com/file/d/1bJ0ad8kjVkf7YHSvtbmz8Of7Oq06kKUZ/view?usp=share_link'),
          Button('Permutation And Combination',
              'https://drive.google.com/file/d/11GDjBwwIIvMPpYypRkpbISKt3oGeN4q-/view?usp=share_link'),
          Button('Complex Number',
              'https://drive.google.com/file/d/1w4O811GcnGAeUagodeVio_WVgZAtmtbU/view?usp=share_link'),
          Button('Definite Integration',
              'https://drive.google.com/file/d/15jUQCtgI7oJUKQNHtAnobqKJJWbFdO9u/view?usp=share_link'),
          Button('Determinants',
              'https://drive.google.com/file/d/110-I5754v_rQZCo6Em2jkm4C3hMLLUy-/view?usp=share_link'),
          Button('Diffrential Eqns',
              'https://drive.google.com/file/d/1pVmAqLJepz4IATfgUCERl0QY4wImNfj6/view?usp=share_link'),
          Button('Ellipse',
              'https://drive.google.com/file/d/1nFZTlAubxEr96QxHjDlOi9i5VFoXO14w/view?usp=share_link'),
          Button('Function',
              'https://drive.google.com/file/d/13dVK6hvIiki2bYbC65ZdmcST5BcOPCfd/view?usp=share_link'),
          Button('Indefinite Integration',
              'https://drive.google.com/file/d/1jbi9cvh6UUMirWxNPv0x1Ky8t2jGqVIE/view?usp=share_link'),
          Button('Inverse Trignometric Functions',
              'https://drive.google.com/file/d/18FkKsM_7He1Kg80ivCjm1f8IAKpvVnI8/view?usp=share_link'),
          Button('Limits Continuity Diffrentiablity',
              'https://drive.google.com/file/d/1-ovIDYH8xelZvsCURjcAeu6HThQy0iW2/view?usp=share_link'),
          Button('Matrices',
              'https://drive.google.com/file/d/bc1qugrtknpjz52vc4m559q7zumkc4268kp7skrsee/view?usp=share_link'),
          Button('Parabola',
              'https://drive.google.com/file/d/1VBSZ7LeDKXE2Sn6Dl8tVvdN-J5NuKQai/view?usp=share_link'),
          Button('Probablity',
              'https://drive.google.com/file/d/17fNOA3Ih-m8UyNvG_SsVAfThiDCqb7KB/view?usp=share_link'),
          Button('Sequence and Series',
              'https://drive.google.com/file/d/1eKhaR72xmG9uqk2TiVLyotdgGInvu-LD/view?usp=share_link'),
          Button('Set Theory',
              'https://drive.google.com/file/d/1YvOKKySLpB-QJORt7n1Lu6nwpLuYdN7c/view?usp=share_link'),
          Button('Stastics',
              'https://drive.google.com/file/d/1Mko50zHgvbFKj4J6Nu8ClW9ypAf5QSOY/view?usp=share_link'),
          Button('Straight Line',
              'https://drive.google.com/file/d/14D-v_-MxAbHtzI5mxTSHwPn-8dDCy6iP/view?usp=share_link'),
          Button('Theory Of Equations',
              'https://drive.google.com/file/d/1znfM9uIwk9JXj5nFyd0bJ1DmOcB8fzG2/view?usp=share_link'),
          Button('Trignometry',
              'https://drive.google.com/file/d/1bhoa1BoUPdXVMKP_GYTFlX7mzOstqFE8/view?usp=share_link'),
          Button('Vectors',
              'https://drive.google.com/file/d/bc1qugrtknpjz52vc4m559q7zumkc4268kp7skrsee/view?usp=share_link'),
        ],
      )),
    );
  }
}
