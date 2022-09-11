import 'package:flutter/material.dart';

// Here Classes To Control with transition route
class SlideRight extends PageRouteBuilder {
  var page;

  SlideRight({this.page})
      : super(
          pageBuilder: (context, animation, animationTwo) => page,
          transitionsBuilder: (context, animation, animationTwo, child) {
            var begin = 1.0;
              var end = 1.0;
              var tween = Tween(
                begin: begin,
                end: end,
              );

            var curveAnimation = CurvedAnimation(
              parent: animation,
              curve: Curves.linear,
            );
            // return SlideTransition(
            //   position: tween.animate(curveAnimation),
            //   child: child,
            // );

            return ScaleTransition(
              // Here Cancel Offset [it's use it just in SlideTransition]
              scale: tween.animate(curveAnimation),
              child: child,
            );
          },
        );
}
