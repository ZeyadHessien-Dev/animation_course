import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimationDefaultTextStyle extends StatefulWidget {
  @override
  State<AnimationDefaultTextStyle> createState() =>
      _AnimationDefaultTextStyleState();
}

class _AnimationDefaultTextStyleState extends State<AnimationDefaultTextStyle> {
  var fs = 16.0;
  var color = Colors.red;
  var fw = FontWeight.w400;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //  (Implicit Widgets)
            // 1. Animated Container
            // 2. Animated CrossFade [Replaced 2 Widget]
            // 3. Animated DefaultTextStyle
            AnimatedDefaultTextStyle(
              style: TextStyle(
                fontSize: fs,
                color: color,
                fontWeight: fw,
              ),
              duration: const Duration(
                seconds: 1,
              ),
              curve: Curves.elasticIn,
              child: const Text(
                'Zeyad Hessien Ali',
              ),
            ),

            const SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.blue,
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    fs = 20.0;
                    color = Colors.green;
                    fw = FontWeight.w600;
                  });
                },
                child: const Text(
                  'Trigger Animate',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
