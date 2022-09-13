import 'package:flutter/material.dart';

class TwoAnimate extends PageRouteBuilder {
  dynamic page;

  TwoAnimate({this.page})
      : super(
            pageBuilder: (context, animation, animationTwo) => page,
            transitionsBuilder: (context, animation, animationTwo, child) {
              var begin = 1.0;
              var end = 1.0;
              var curve = Curves.ease;
              var tween = Tween(
                begin: begin,
                end: end,
              ).chain(CurveTween(curve: curve));
              var curvedAnimation = CurvedAnimation(
                parent: animation,
                curve: Curves.elasticIn,
              );
              return ScaleTransition(
                scale: tween.animate(
                  curvedAnimation,
                ),
                child: Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: SizeTransition(
                    sizeFactor: animation,
                    child: child,
                  ),
                ),
              );
            });
}
