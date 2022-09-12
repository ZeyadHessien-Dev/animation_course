import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimateWidget extends StatefulWidget {
  @override
  State<AnimateWidget> createState() => _AnimateWidgetState();
}

class _AnimateWidgetState extends State<AnimateWidget> {
  var myWidth = 200.0;
  var myHeight = 200.0;
  var myColor = Colors.red;
  var myRadius = 0.0;
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
            AnimatedContainer(
              duration: const Duration(
                seconds: 1,
              ),
              curve: Curves.fastOutSlowIn,
              width: myWidth,
              height: myHeight,
              decoration: BoxDecoration(
                color: myColor,
                borderRadius: BorderRadius.circular(myRadius),
              ),
              child: const Center(
                child: Text(
                  'Animated Container',
                  textAlign: TextAlign.center,

                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
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
                    myWidth = 300.0;
                    myHeight = 300.0;
                    myColor = Colors.green;
                    myRadius = 10.0;
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
