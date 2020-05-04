import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

import 'login_screen.dart';

class AppSplash extends StatefulWidget {
  _AppSplashState createState() => _AppSplashState();
}

class _AppSplashState
    extends State<AppSplash>
    with SingleTickerProviderStateMixin {

  Animation<double> animation;
  AnimationController controller;

  @override initState() {
    super.initState();
    controller = AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = Tween<double>(begin: 0, end: 300).animate(controller)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          Navigator.of(context).push(_createRoute());
        }
      })
      ..addStatusListener((state) => print('$state'));

    controller.forward();
  }

  @override
  Widget build(BuildContext context) => GrowTransition(
    child: LogoWidget(),
    animation: animation,
  );

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Route _createRoute() {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => LoginScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = Offset(0.0, 1.0);
          var end = Offset.zero;
          var curve = Curves.ease;

          var tween = Tween(begin: begin, end: end);
          var curvedAnimation = CurvedAnimation(
            parent: animation,
            curve: curve,
          );

          return SlideTransition(
            position: tween.animate(curvedAnimation),
            child: child,
          );
        }
    );
  }
}

class LogoWidget extends StatelessWidget {
  Widget build(BuildContext context) => Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: FlutterLogo()
  );
}

class GrowTransition extends StatelessWidget {
  GrowTransition({this.child, this.animation});

  final Widget child;
  final Animation<double> animation;

  Widget build(BuildContext context) => Center(
    child: AnimatedBuilder(
        animation: animation,
        builder: (context, child) => Container(
          height: animation.value,
          width: animation.value,
          child: child,
        ),
        child: child),
  );
}
