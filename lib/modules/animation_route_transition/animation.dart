import 'package:flutter/material.dart';

// Here Classes To Control with transition route
class SlideRight extends PageRouteBuilder {
  var page;

  SlideRight({this.page})
      : super(
          pageBuilder: (context, animation, animationTwo) => page,
          transitionsBuilder: (context, animation, animationTwo, child) {
            var begin = const Offset(0.0, 1.0);
              var end = const Offset(0.0, 0.0);
              var tween = Tween(
                begin: begin,
                end: end,
              );
              var offsetAnimation = animation.drive(tween);
            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );

          },
        );
}
