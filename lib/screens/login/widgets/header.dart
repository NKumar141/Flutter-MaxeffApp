import 'package:flutter/material.dart';

import '../../../aboutpage.dart';
import '../../../constants.dart';
import '../../../widgets/logo.dart';
import 'fade_slide_transition.dart';

class Header extends StatelessWidget {
  final Animation<double> animation;

  const Header({
    required this.animation,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPaddingL),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Logo(
                color: kBlue,
                size: 58.0,
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => aboutpage()));
                },
                icon: Icon(Icons.code_sharp),
                alignment: Alignment.topRight,
                color: Colors.black,
                iconSize: 30,
              ),
            ],
          ),
          const SizedBox(height: kSpaceM),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 0.0,
            child: Text(
              'Welcome to JEE Notes',
              style: Theme.of(context).textTheme.headline5!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          const SizedBox(height: kSpaceS),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 15.0,
            child: Text(
              'Go Ahead and get some well-written Handwritten notes for',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(color: Colors.black),
            ),
          ),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 15.0,
            child: Text(
              'your JEE preparation',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
