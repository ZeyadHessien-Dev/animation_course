import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimationPhysicalModel extends StatefulWidget {
  @override
  State<AnimationPhysicalModel> createState() => _AnimationPhysicalModelState();
}

class _AnimationPhysicalModelState extends State<AnimationPhysicalModel> {
  var el = 0.0;
  var color = Colors.red;
  var shColor = Colors.red;
  var myWidth = 200.0;
  var myHeight = 200.0;
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
            AnimatedPhysicalModel(
              shape: BoxShape.rectangle,
              elevation: el,
              color: color,
              shadowColor: shColor,
              onEnd: () { // To do another thing after animate finish
                setState(() {
                  myWidth = 300.0;
                  myHeight = 300.0;
                });
              },
              duration: const Duration(
                seconds: 1,
              ),
              child: SizedBox(
                width: myWidth,
                height: myHeight,
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
            const SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.blue,
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    el = 20.0;
                    color = Colors.green;
                    shColor = Colors.green;
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
