import 'package:animation_project/modules/animation_route_transition/animation.dart';
import 'package:animation_project/modules/animation_route_transition/page_two.dart';
import 'package:flutter/material.dart';

class PageOneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context, TwoAnimate(page: PageTwoScreen()));
                },
                child: const Text(
                  'Go To Page Two',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
