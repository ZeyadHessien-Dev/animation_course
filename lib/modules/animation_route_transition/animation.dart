import 'package:flutter/material.dart';

// Here Classes To Control with transition route
class SlideRight extends PageRouteBuilder {
  var page;

  SlideRight({this.page})
      : super(

    pageBuilder: (context, animation, animationTwo) => page,
    transitionsBuilder: (context, animation, animationTwo, child) {
      var begin = 0.9;
      var end = 1.0;
      var tween = Tween(
        begin: begin,
        end: end,
      );
      var curveTransition = CurvedAnimation(
        parent: animation,
        curve: Curves.fastOutSlowIn,
      );
      return ScaleTransition(
        scale: tween.animate(curveTransition),
        child: Align(
          child: SizeTransition(
            sizeFactor: animation,
            child: child,
          ),
        ),
      );
    },
  );

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
