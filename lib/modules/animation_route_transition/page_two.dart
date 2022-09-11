import 'package:animation_project/modules/animation_route_transition/page_one.dart';
import 'package:flutter/material.dart';
import 'animation.dart';

class PageTwoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context, SlideRight(page: PageOneScreen()));
                },
                child: const Text(
                  'Go To Page One',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
