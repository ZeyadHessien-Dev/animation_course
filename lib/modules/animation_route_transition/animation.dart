import 'package:flutter/material.dart';

class SlideRight extends PageRouteBuilder {
  dynamic page;

  SlideRight({this.page})
      : super(
            pageBuilder: (context, animation, animationTwo) => page,
            transitionsBuilder: (context, animation, animationTwo, child) {
              var begin = const Offset(1.0, 0.0);
              var end = const Offset(0.0, 0.0);
              var tween = Tween(
                begin: begin,
                end: end,
              );
              var offsetTransition = animation.drive(tween);
              return SlideTransition(
                position: offsetTransition,
                child: child,
              );
            });
}
