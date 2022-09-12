import 'package:flutter/material.dart';

class MyTransform extends StatefulWidget {
  @override
  State<MyTransform> createState() => _MyTransformState();
}

class _MyTransformState extends State<MyTransform> {
  var rotVal = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transform'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Transform.scale(
              scale: rotVal,
              origin: const Offset(100, -50),
              child: Container(
                width: 200,
                height: 100,
                color: Colors.deepOrange,
              ),
            ),

            // child: Transform.rotate(
            //   angle: rotVal,
            //   origin: const Offset(100, -50), // can use it in any Transform
            //   child: Container(
            //     width: 200,
            //     height: 100,
            //     color: Colors.deepOrange,
            //   ),
            // ),
          ),
          const SizedBox(
            height: 50,
          ),
          // Rotate
          // Slider(
          //   value: rotVal,
          //   onChanged: (value) {
          //     setState(() {
          //       rotVal = value;
          //     });
          //   },
          //   max: 2 * 3.14,
          //   min: 0,
          // ),


          // Scale
          Slider(
            value: rotVal,
            onChanged: (value) {
              setState(() {
                rotVal = value;
              });
            },
            max: 3.0,
            min: 0.0,
          ),
        ],
      ),
    );
  }
}
