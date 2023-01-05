import 'package:flutter/material.dart';
import 'info.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// our data
const url = 'https://www.linkedin.com/in/nikhil-kumar-555341203/';
const email = "maxeff141@gmail.com";
const gitlink = 'https://github.com/NKumar141/Flutter-MaxeffApp/tree/master';

class aboutpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[800],
        body: SafeArea(
          minimum: const EdgeInsets.only(top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/mee.jpg'),
              ),
              Text(
                "Nikhil Kumar",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Pacifico",
                ),
              ),
              Text(
                "Flutter Developer | Application Developer",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Pacifico",
                ),
              ),
              Text(
                "Freelancer",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Pacifico",
                ),
              ),

              Text(
                "Reachout to work together or for queries",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.blueGrey[200],
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Source Sans Pro"),
              ),
              SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.white,
                ),
              ),

              // we will be creating a new widget name info carrd

              //InfoCard(text: phone, icon: Icons.phone, onPressed: () async {}),

              InfoCard(
                  text: 'LinkedIn',
                  icon: FontAwesomeIcons.linkedin,
                  onPressed: () {
                    launch(url, enableJavaScript: true);
                  }),
              InfoCard(
                  text: email,
                  icon: Icons.email,
                  onPressed: () async {
                    //await Clipboard.setData(ClipboardData(text: email));
                    Clipboard.setData(new ClipboardData(text: email)).then((_) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Copied to your clipboard !')));
                    });
                  }),
              InfoCard(
                  text: 'Github Source Code',
                  icon: FontAwesomeIcons.github,
                  onPressed: () {
                    launch(gitlink, enableJavaScript: true);
                  }),
            ],
          ),
        ));
  }
}
