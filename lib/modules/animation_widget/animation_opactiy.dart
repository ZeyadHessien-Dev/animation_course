import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimationOpacity extends StatefulWidget {
  @override
  State<AnimationOpacity> createState() => _AnimationOpacityState();
}

class _AnimationOpacityState extends State<AnimationOpacity> {
  bool isOpacity = true;

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
            // 5. Animated Opacity
            AnimatedOpacity(
              duration: const Duration(seconds: 2),
              opacity: isOpacity ? 0 : 1,
              child: Container( // can use two animate with same time --> AnimatedContainer instead of Container
                width: 200,
                height: 200,
                color: Colors.red,
                padding: const EdgeInsets.all(10.0),
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
                    isOpacity = !isOpacity;
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
