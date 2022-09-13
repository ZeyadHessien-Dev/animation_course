import 'package:flutter/material.dart';

// Here Classes To Control with transition route
class TwoAnimate extends PageRouteBuilder {
  var page;

  TwoAnimate({this.page})
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
}
