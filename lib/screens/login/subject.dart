import 'package:flutter/material.dart';
import 'package:maxeffproject/screens/login/widgets/fade_slide_transition.dart';

import '../../chemistrypage.dart';
import '../../constants.dart';
import '../../mathspage.dart';
import '../../physicspage.dart';
import 'widgets/custom_clippers/index.dart';
import 'widgets/header.dart';
import 'widgets/login_form.dart';

class Subject extends StatelessWidget {
  final String sub;
  final Widget where;

  const Subject({
    required this.sub,
    required this.where,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        //color: Colors.deepPurpleAccent,
        height: 70,
        width: 250,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 4),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            new BoxShadow(
              color: Colors.green,
              offset: new Offset(6.0, 6.0),
            ),
          ],
        ),
        child: Text(
          sub,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 30.0, color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => where),
        );
      },
    );
  }
}
