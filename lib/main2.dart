import 'package:flutter/material.dart';
import 'package:maxeffproject/screens/login/login.dart';

import 'screens/onboarding/onboarding.dart';

class Appext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Onboarding Concept',
      home: Builder(
        builder: (BuildContext context) {
          final screenHeight = MediaQuery.of(context).size.height;

          return Login(screenHeight: screenHeight);
        },
      ),
    );
  }
}
