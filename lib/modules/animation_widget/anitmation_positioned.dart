import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimationPositioned extends StatefulWidget {
  @override
  State<AnimationPositioned> createState() => _AnimationPositionedState();
}

class _AnimationPositionedState extends State<AnimationPositioned> {
  var top = 0.0;
  var right = 0.0;
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
            // 4. Animated Padding
            // 5. Animated Physical Model
            // 6. Animated Positioned
            Container(
              width: 400,
              height: 400,
              color: Colors.grey,
              child: Stack(
                children: [
                  AnimatedPositioned( // Must be inside Stack
                    top: top,
                    right: right,
                    duration: const Duration(
                      seconds: 1,
                    ),
                    // Must be inside Stack
                    child: Container(
                      color: Colors.blue,
                      width: 100,
                      height: 100,
                      child: const Center(
                        child: Text(
                          'Zeyad',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
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
                    right = 300;
                    top = 100;
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
