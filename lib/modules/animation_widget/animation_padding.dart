import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimationPadding extends StatefulWidget {
  @override
  State<AnimationPadding> createState() => _AnimationPaddingState();
}

class _AnimationPaddingState extends State<AnimationPadding> {
  bool isPadding = true;

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
            Container(
              color: Colors.red,
              child: AnimatedPadding(
                padding: isPadding
                    ? const EdgeInsets.all(5.0)
                    : const EdgeInsets.all(20.0),
                curve: Curves.linear,
                duration: const Duration(
                  seconds: 1,
                ),
                child: const Text(
                  'Zeyad Hessien',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
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
                    isPadding = !isPadding;
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
