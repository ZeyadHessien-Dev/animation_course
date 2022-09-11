import 'package:flutter/material.dart';

// Here Classes To Control with transition route
class SlideRight extends PageRouteBuilder {
  var page;

  SlideRight({this.page})
      : super(
          pageBuilder: (context, animation, animationTwo) => page,
          transitionsBuilder: (context, animation, animationTwo, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
}
