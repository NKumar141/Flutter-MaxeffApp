import 'package:flutter/material.dart';
import 'package:maxeffproject/screens/login/widgets/fade_slide_transition.dart';
import 'subject.dart';
import '../../chemistrypage.dart';
import '../../constants.dart';
import '../../mathspage.dart';
import '../../physicspage.dart';
import 'widgets/custom_clippers/index.dart';
import 'widgets/header.dart';
import 'widgets/login_form.dart';

class Login extends StatefulWidget {
  final double screenHeight;

  const Login({
    required this.screenHeight,
  });

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _headerTextAnimation;
  late final Animation<double> _formElementAnimation;
  late final Animation<double> _whiteTopClipperAnimation;
  late final Animation<double> _blueTopClipperAnimation;
  late final Animation<double> _greyTopClipperAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: kLoginAnimationDuration,
    );

    final fadeSlideTween = Tween<double>(begin: 0.0, end: 1.0);
    _headerTextAnimation = fadeSlideTween.animate(CurvedAnimation(
      parent: _animationController,
      curve: const Interval(
        0.0,
        0.6,
        curve: Curves.easeInOut,
      ),
    ));
    _formElementAnimation = fadeSlideTween.animate(CurvedAnimation(
      parent: _animationController,
      curve: const Interval(
        0.7,
        1.0,
        curve: Curves.easeInOut,
      ),
    ));

    final clipperOffsetTween = Tween<double>(
      begin: widget.screenHeight,
      end: 0.0,
    );
    _blueTopClipperAnimation = clipperOffsetTween.animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(
          0.2,
          0.7,
          curve: Curves.easeInOut,
        ),
      ),
    );
    _greyTopClipperAnimation = clipperOffsetTween.animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(
          0.35,
          0.7,
          curve: Curves.easeInOut,
        ),
      ),
    );
    _whiteTopClipperAnimation = clipperOffsetTween.animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(
          0.5,
          0.7,
          curve: Curves.easeInOut,
        ),
      ),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kWhite,
      body: Stack(
        children: <Widget>[
          AnimatedBuilder(
            animation: _whiteTopClipperAnimation,
            builder: (_, Widget? child) {
              return ClipPath(
                clipper: WhiteTopClipper(
                    yOffset: 45 //_whiteTopClipperAnimation.value,
                    ),
                child: child,
              );
            },
            child: Container(color: kGrey),
          ),
          AnimatedBuilder(
            animation: _greyTopClipperAnimation,
            builder: (_, Widget? child) {
              return ClipPath(
                clipper:
                    GreyTopClipper(yOffset: 45 //_greyTopClipperAnimation.value,
                        ),
                child: child,
              );
            },
            child: Container(color: kBlue),
          ),
          AnimatedBuilder(
            animation: _blueTopClipperAnimation,
            builder: (_, Widget? child) {
              return ClipPath(
                clipper: BlueTopClipper(
                  yOffset: 45, //_blueTopClipperAnimation.value,
                ),
                child: child,
              );
            },
            child: Container(color: kWhite),
          ),
          // AnimatedBuilder(
          //   animation: _greyTopClipperAnimation,
          //   builder: (_, Widget? child) {
          //     return ClipPath(
          //       clipper: GreyTopClipper(
          //         yOffset: _greyTopClipperAnimation.value,
          //       ),
          //       child: child,
          //     );
          //   },
          //   child: Container(color: kBlue),
          // ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: kPaddingL),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Header(animation: _headerTextAnimation),
                  //const Spacer(),
                  SizedBox(
                    height: 90,
                  ),
                  Subject(sub: "Physics", where: Physicspage()),
                  Subject(sub: "Maths", where: Mathspage()),
                  Subject(sub: "Chemistry", where: Chemistrypage()),
                  // Container(
                  //   height: 50.0,
                  //   margin: EdgeInsets.all(10),
                  //   child: ElevatedButton(
                  //     onPressed: () {},
                  //     style: ElevatedButton.styleFrom(
                  //       shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(80.0)),
                  //       padding: EdgeInsets.all(0.0),
                  //     ),
                  //     child: Ink(
                  //       decoration: BoxDecoration(
                  //           gradient: LinearGradient(
                  //             colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                  //             begin: Alignment.centerLeft,
                  //             end: Alignment.centerRight,
                  //           ),
                  //           borderRadius: BorderRadius.circular(30.0)),
                  //       child: Container(
                  //         constraints:
                  //             BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                  //         alignment: Alignment.center,
                  //         child: Text(
                  //           "Gradient Button",
                  //           textAlign: TextAlign.center,
                  //           style: TextStyle(color: Colors.white, fontSize: 15),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),

                  // FadeSlideTransition(
                  //   animation: _headerTextAnimation,
                  //   additionalOffset: 15,
                  //   child: Container(
                  //     margin: EdgeInsets.all(19),
                  //     child: ElevatedButton(
                  //       style: ElevatedButton.styleFrom(
                  //         padding: EdgeInsets.symmetric(
                  //             horizontal: 40.0, vertical: 15.0),
                  //         primary: Colors.deepPurpleAccent,
                  //         //shape: StadiumBorder(),
                  //       ),
                  //       child: Text(
                  //         'Mathematics',
                  //         style: TextStyle(fontSize: 30.0),
                  //       ),
                  //       // color: Colors.blueAccent,
                  //       // textColor: Colors.white,
                  //       onPressed: () {
                  //         Navigator.push(
                  //             context,
                  //             MaterialPageRoute(
                  //                 builder: (context) => Mathspage()));
                  //       },
                  //     ),
                  //   ),
                  // ),
                  // FadeSlideTransition(
                  //   animation: _headerTextAnimation,
                  //   additionalOffset: 15,
                  //   child: Container(
                  //     margin: EdgeInsets.all(19),
                  //     child: ElevatedButton(
                  //       style: ElevatedButton.styleFrom(
                  //         padding: EdgeInsets.symmetric(
                  //             horizontal: 40.0, vertical: 15.0),
                  //         primary: Colors.deepPurpleAccent,
                  //         // shape: StadiumBorder(),
                  //       ),
                  //       child: Text(
                  //         'Chemistry',
                  //         style: TextStyle(fontSize: 30.0),
                  //       ),
                  //       // color: Colors.blueAccent,
                  //       // textColor: Colors.white,
                  //       onPressed: () {
                  //         Navigator.push(
                  //             context,
                  //             MaterialPageRoute(
                  //                 builder: (context) => Chemistrypage()));
                  //       },
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
