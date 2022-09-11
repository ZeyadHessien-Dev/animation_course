import 'package:flutter/material.dart';

// Here Classes To Control with transition route
class SlideRight extends PageRouteBuilder {
  var page;

  SlideRight({this.page})
      : super(
          pageBuilder: (context, animation, animationTwo) => page,
          transitionsBuilder: (context, animation, animationTwo, child) {
            var begin = 1.0;
            var end = 0.0;
            var tween = Tween(
              begin: begin,
              end: end,
            );
            var curvedAnimation = CurvedAnimation(
              parent: animation,
              curve: Curves.linear ,
            );
            return RotationTransition(
              turns: tween.animate(curvedAnimation),
              child: child,
            );
          },
        );
}
