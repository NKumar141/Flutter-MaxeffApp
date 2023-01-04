import 'package:flutter/material.dart';
import 'info.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

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
          minimum: const EdgeInsets.only(top: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/Maxeff TechSolns.jpg'),
              ),
              Text(
                "Maxeff TechSolutions",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40.0,
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
                  text: url,
                  icon: Icons.web,
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
                  icon: Icons.web,
                  onPressed: () {
                    launch(gitlink, enableJavaScript: true);
                  }),
            ],
          ),
        ));
  }
}
