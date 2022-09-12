import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimationCrossFade extends StatefulWidget {
  @override
  State<AnimationCrossFade> createState() => _AnimationCrossFadeState();
}

class _AnimationCrossFadeState extends State<AnimationCrossFade> {
  bool showFirst = true;

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
            AnimatedCrossFade(
              firstChild: Container(
                color: Colors.red,
                width: 200,
                height: 200,
                child: const Center(
                  child: Text(
                    'One',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19.0,
                    ),
                  ),
                ),
              ),
              secondChild: Container(
                color: Colors.green,
                width: 200,
                height: 200,
                child: const Center(
                  child: Text(
                    'Two',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19.0,
                    ),
                  ),
                ),
              ),
              crossFadeState: showFirst
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(
                seconds: 1,
              ),
              firstCurve: Curves.easeInBack,
              secondCurve: Curves.linear,
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.blue,
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    showFirst = !showFirst;
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
