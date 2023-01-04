import 'dart:math';

import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final Color color;
  final double size;

  const Logo({
    required this.color,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
        angle: -0,
        //pi / 4,
        child: Container(
          height: 75,
          width: 75,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/appicon.png'),
              fit: BoxFit.fill,
            ),
            shape: BoxShape.circle,
          ),
        )

        // CircleAvatar(
        //   backgroundImage: AssetImage("assets/appicon.png"),
        // )
        // Icon(
        //   Icons.format_bold,
        //   color: color,
        //   size: size,
        // ),
        );
  }
}
